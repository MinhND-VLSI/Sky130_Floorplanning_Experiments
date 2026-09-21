# Physical Design Practice — Sky130 / OpenLane 2

Design lineage: `cla4` (4-bit Carry Lookahead Adder) → `cla8`/`cla32`
(combinational) → `acc8`/`acc32` (sequential accumulators) → `acc32_sram`
(sequential accumulator + SRAM macro). All designs verified with Icarus
Verilog self-checking testbenches before being pushed through OpenLane 2.

---

# Level 1 — Core Utilization Sweep

## Objective and method

Characterize how `FP_CORE_UTIL` affects flow closure on Sky130A, comparing
two structurally distinct design classes:

- **Combinational**: `cla8`, `cla32` — pure Carry Lookahead Adders, no
  sequential elements, no CTS stage triggered.
- **Sequential**: `acc8`, `acc32` — accumulators wrapping `cla8`/`cla32`
  respectively, with a register updated on every `posedge clk`, triggering
  full Clock Tree Synthesis.

Each design was run at three utilization targets (40%, 60%, 80%), all
other parameters held constant (PDK sky130A, sky130_fd_sc_hd,
CLOCK_PERIOD=20ns). 

## Results — Combinational

### cla8 (8-bit CLA)

| Metric | 40% | 60% | 80% |
|---|---|---|---|
| Die area (µm²) | 2387.48 | 1832.76 | N/A |
| Core area (µm²) | 1066.02 | 653.126 | N/A |
| Cell area (µm²) | 431.664 | 420.403 | N/A |
| Actual utilization (%) | 40.49 | 64.40 | N/A |
| Result | PASS | PASS | **FAIL — GPL-0302** |

### cla32 (32-bit CLA)

| Metric | 40% | 60% | 80% |
|---|---|---|---|
| Die area (µm²) | 7062.59 | N/A | N/A |
| Core area (µm²) | 4414.23 | N/A | N/A |
| Cell area (µm²) | 1830.51 | N/A | N/A |
| Actual utilization (%) | 41.47 | N/A | N/A |
| Result | PASS | **FAIL — PPL-0024** | **FAIL — PPL-0024** |

## Results — Sequential

### acc8 (8-bit accumulator)

| Metric | 40% | 60% | 80% |
|---|---|---|---|
| Die area (µm²) | 3003.42 | 2272.39 | N/A |
| Core area (µm²) | 1471.41 | 935.898 | N/A |
| Cell area (µm²) | 654.378 | 650.624 | N/A |
| Actual utilization (%) | 44.47 | 69.52 | N/A |
| Result | PASS | PASS | **FAIL — DPL-0036 (post-CTS)** |

### acc32 (32-bit accumulator)

| Metric | 40% | 60% | 80% |
|---|---|---|---|
| Die area (µm²) | 9794.06 | 7015.52 | 5579.03 |
| Core area (µm²) | 6718.94 | 4384.2 | 3336.95 |
| Cell area (µm²) | 2776.41 | 2746.38 | 2728.87 |
| Actual utilization (%) | 41.32 | 62.64 | 81.78 |
| Result | PASS | PASS | **PASS** |

## Core-sizing mechanism in OpenLane classic

Core area is not a direct user input. It is derived post-synthesis as:
```
core_area = design__instance__area / (FP_CORE_UTIL / 100)
die_area = core_area + 2 × FP_CORE_MARGIN
```

where `design__instance__area` is fixed by RTL and cell library
(`sky130_fd_sc_hd`), independent of `FP_CORE_UTIL`. Verified directly from
the acc32 (80%) data: `2728.87 / 3336.95 = 0.8178`, matching the reported
utilization (0.817773).

Critically, this formula contains **no term for I/O pin count**. Die
geometry is set purely from internal logic area; the pin constraint is
only checked afterward, at the I/O Placement (PPL) stage — it is not an
input to the sizing formula.

## Three failure mechanisms observed

| Error | Stage | Constraint violated | Observed in |
|---|---|---|---|
| PPL-0024 | I/O Placement (before Global Placement) | Available perimeter tracks < required pin count | cla32 @ 60%, 80% |
| GPL-0302 | Global Placement | Core area insufficient for cells + margin | cla8 @ 80% |
| DPL-0036 | Detailed Placement, post-CTS | Remaining whitespace insufficient for CTS-inserted buffers | acc8 @ 80% |

**PPL-0024 (cla32, 60%/80%):** Both targets report the exact same minimum
required perimeter — 333.20µm — independent of `FP_CORE_UTIL`. `cla32`
has 98 I/O pins (`a[31:0]` + `b[31:0]` + `sum[31:0]` + `cin` + `cout`),
while core area (derived from ~1800µm² of logic) produces a die too
geometrically small to fit that many pins around its perimeter, regardless
of utilization target. This is a perimeter/pin-count constraint, entirely
decoupled from the density constraint: die area scales quadratically with
linear dimension (N²), while available perimeter track count scales
linearly (4N/pitch). A design with high pin count but small logic area is
prone to becoming pin-limited before it ever becomes area-limited.

**GPL-0302 (cla8, 80%):** A pure density constraint — total cell area at
the 80% target exceeds what Global Placement can legally arrange with
margin for routing and detailed placement.

**DPL-0036 (acc8, 80%):** Occurs later in the pipeline (post-CTS), not at
Global Placement. Mechanism: GPL only accounts for the cell set known from
synthesis (original logic + flip-flops); at 80% target, GPL still
converges. CTS subsequently inserts buffers/inverters into the clock
network to meet skew targets — cells not accounted for in GPL's original
density estimate. When the remaining whitespace cannot accommodate these
new buffers, Detailed Placement fails. This shows that the effective
density constraint for sequential designs is
`density(base cells) + density(clock buffers)`, where the second term is
unknown at GPL time.

## acc8 vs acc32 divergence at 80% target

acc8 fails (DPL-0036), acc32 passes, despite both being sequential
accumulators with identical CTS insertion structure.

| | acc8 (FAIL @ 80%) | acc32 (PASS @ 80%) |
|---|---|---|
| Flip-flop count | 8 | 32 |
| Cell area @ 80% | Undetermined (flow failed at Detailed Placement before final metrics were written) | 2728.87 µm² |
| Core area @ 80% | Undetermined | 3336.95 µm² |
| Nominal whitespace (core × 0.2) | Undetermined | ~667 µm² |
| Core area @ 60% (reference) | 935.898 µm² | 4384.2 µm² |
| acc32/acc8 core-area ratio @ 60% | — | ~4.7× |

"Larger core area" is not itself an independent explanatory variable — it
is a direct consequence of `core_area = cell_area / util`, established
above. The measured data shows: at the 80% target, acc32 reaches a core
area of 3336.95 µm², implying nominal whitespace
`core_area × (1 − util) ≈ 667 µm²`. For acc8, the flow failed at Detailed
Placement before final metrics were recorded, so the corresponding
whitespace figure is not directly known; however, based on the core-area
trend at lower targets (acc8 consistently ~4× smaller than acc32 at both
40% and 60%), there is reasonable basis to infer that acc8's absolute
whitespace at 80% was also substantially smaller.

Smaller absolute whitespace is the most plausible explanation for acc8's
failure and acc32's success, since this is the quantity that directly
determines whether Detailed Placement has legal sites available for
buffers CTS inserts after Global Placement. This remains a correlational
inference, not a directly measured mechanism — a firm conclusion would
require extracting the area report immediately after Global Placement
(before Detailed Placement fails), which is outside the scope of data
collected in this experiment.

---

# Level 2 — PDN Strap Pitch Sweep

## Objective

Characterize the effect of `FP_PDN_VPITCH`/`FP_PDN_HPITCH` on IR drop,
cross-referenced against the theoretical impedance-budget relation
`R_max = V_drop_max / I_peak`. Uses `acc32` (sequential) rather than
`cla32` (combinational), since dynamic switching activity through CTS is
required to observe any meaningful effect of PDN strap density on IR drop
— static leakage alone in a combinational design does not produce this.

## Baseline

Default OpenLane values for `acc32` at 40% utilization (from
`resolved.json`):

| Parameter | Value |
|---|---|
| FP_PDN_VPITCH | 153.6 µm |
| FP_PDN_HPITCH | 153.18 µm |
| FP_PDN_VWIDTH / HWIDTH | 1.6 µm |

Two test configurations: **narrow** (75µm, ~2× strap density vs.
baseline) and **wide** (300µm, ~½ strap density vs. baseline), all other
parameters held constant (FP_CORE_UTIL=40, CLOCK_PORT=clk,
CLOCK_PERIOD=20ns).

## Results

| Metric | Narrow (75µm) | Wide (300µm) | Difference |
|---|---|---|---|
| VPWR worst-case IR drop | 2.94×10⁻⁴ V | 2.94×10⁻⁴ V | 0% |
| VGND worst-case IR drop | 2.55×10⁻⁴ V | 3.36×10⁻⁴ V | +31.8% |
| VGND average IR drop | 9.00×10⁻⁵ V | 9.81×10⁻⁵ V | +9% |
| Result | PASS | PASS | — |

**VGND is more sensitive to pitch than VPWR.** VPWR shows no measurable
difference between narrow and wide configurations, while VGND diverges by
31.8%. One plausible explanation: the return path through VGND is more
directly affected by local strap density when many flip-flops switch
simultaneously and funnel current back at once, whereas VPWR is fed from
the core ring — a fixed structure independent of VPITCH/HPITCH — making it
less sensitive to internal pitch changes. This is an observation, not a
confirmed mechanism.

## Limitations of this experiment

- Both configurations pass; no PDN pitch failure point was observed. A
  more extreme pitch (>500–1000µm) or a larger design (multiple parallel
  accumulators) would likely be needed to generate enough current density
  to push IR drop to a meaningful threshold.
- `VSRC_LOC_FILES` was not declared (warning present on every run), so IR
  drop analysis accuracy is limited per OpenROAD's own caveat — results
  should be read as directional estimates, not tape-out-grade
  measurements.

---

# Level 3 — Macro Placement (SRAM Integration)

## Design

`acc32_sram` extends `acc32` with one SRAM macro
(`sky130_sram_1kbyte_1rw1r_32x256_8`, 256×32-bit, sourced from
`VLSIDA/sky130_sram_macros`, OpenRAM-generated). Architecture: a write
phase loads data via `wr_en`/`wr_addr`/`wr_data`; a read phase then
sequentially scans the SRAM and accumulates each value into the
underlying `acc32` core (reused unmodified).

## RTL verification

Self-checking testbench with a parallel reference model mirroring the
real pipeline structure: a 2-cycle latency (1 cycle for internal address
latching inside the SRAM behavioral model, 1 cycle to register `dout0` on
`posedge` and decouple it from the model's internal `negedge` update).
Debugging surfaced two distinct race conditions:

1. A race between testbench and DUT at the same `posedge clk` when
   assigning control signals (`wr_addr`/`wr_data`) — resolved by delaying
   every testbench signal change by `#1` after `@(posedge clk)`.
2. The SRAM behavioral model's `dout0` oscillated between a valid value
   and `x`, because the model blocking-assigns `dout0 = x` immediately
   after every `posedge`, creating a narrow valid window that broke when
   `acc32` sampled at the same instant — resolved by registering `dout0`
   into a dedicated flop (`dout0_q`) on `posedge`, removing the direct
   dependency on the model's internal timing.

Result: `ALL TESTS PASSED`, all 16 read-accumulate operations matched the
reference model exactly.

## PD flow — configuration path

OpenLane 2's macro-integration variables differ substantially from
OpenLane classic. The working configuration required:

- A hand-written blackbox Verilog stub for the SRAM (port declarations
  only, no internal logic) so Yosys treats it as a pre-existing block
  rather than attempting synthesis.
- The `MACROS` JSON object (OpenLane 2's replacement for the deprecated
  `MACRO_PLACEMENT_CFG` / `EXTRA_LEFS` / `EXTRA_GDS_FILES` variables),
  specifying instance location/orientation plus GDS/LEF/LIB paths in one
  place.
- `lib` wildcard set to `"*"` rather than a specific corner name — the
  macro ships only a single (TT) timing corner, and restricting the
  wildcard to that corner by name left every other corner with "no libs
  found," which later caused STA to hard-fail (`STA-1112`) when it tried
  to resolve a cell at a corner with no data.
- `PDN_MACRO_CONNECTIONS` (not `FP_PDN_MACRO_HOOKS`, which is the
  OpenLane classic name and silently ignored in OpenLane 2) to connect
  the macro's `vccd1`/`vssd1` pins into the power network.
- `MAX_TRANSITION_CONSTRAINT` relaxed from the default 0.040ns to 0.15ns
  — the macro's capacitive load could not meet the default transition
  time regardless of clock period, since the constraint is a property of
  driver strength vs. load, not clock speed.

## PD flow — signoff results (run `acc32_sram_v9`)

| Check | Result |
|---|---|
| Synthesis / lint | 0 errors |
| Setup timing | PASS (0 violations, WNS/TNS = 0) |
| Hold timing | PASS (0 violations, WNS/TNS = 0) |
| Antenna | PASS |
| LVS (Netgen) | PASS |
| KLayout DRC | 0 errors |
| Magic DRC | **389 errors** (single rule: `nwell.4` — "nwell must contain metal-connected N+ taps") |

Manufacturability report classifies the run as DRC-failed overall, driven
entirely by the Magic DRC count; KLayout DRC independently reports zero
violations on the same layout.

## Investigating the Magic DRC discrepancy

The 389 violations are highly systematic, recurring at exactly the
standard-cell row pitch (~5.44µm) across the full die. Two hypotheses
were tested:

**Hypothesis A — insufficient tap-cell density.** Rejected by direct
experiment: a second run (`v10`) with `FP_TAPCELL_DIST` reduced from
default to 10 increased tap-cell count from 3,920 to 5,156 (+31.5%). The
Magic DRC error count remained unchanged at exactly 389. A cross-check of
one specific violation region against the placed DEF confirmed a tap
cell (`sky130_fd_sc_hd__tapvpwrvgnd_1`) physically present inside the
flagged area, with a VPWR met1 FOLLOWPIN routing directly through it —
ruling out "missing tap" as the literal cause.

**Hypothesis B — Magic GDS-import corruption triggered by the SRAM
macro's OPC layers.** Supported by a control experiment available from
Level 1: `acc32` (identical PDK, identical Magic version, identical
tapcell/PDN methodology, **no macro**) completes the full flow with a
clean Magic DRC pass. The only structural difference between the passing
control and the failing `acc32_sram` run is the presence of the SRAM
macro's GDS, which triggers dozens of "Unknown layer/datatype" read
errors during Magic's stream-out step (`layer=33 type=42/43`,
`layer=22 type=21/22`, `layer=235 type=0`) — layers confirmed by
`VLSIDA/OpenRAM` issue #247 to be required OPC-related geometry that
cannot be removed from the macro. This is consistent with a plausible
mechanism: Magic's internal DRC-tracking state becomes corrupted after
encountering unrecognized layer/datatype pairs during GDS read, with the
effect propagating to unrelated standard-cell rows elsewhere in the
merged layout — rather than 389 independent, physically real tap
violations appearing for the first time only when a macro is present.

This hypothesis is well-supported but not proven at the byte-stream
level; doing so would require GDS-level debugging tools outside the scope
of this project.

## Workarounds attempted (for reference — none resolve the root cause)

| Variable | Effect |
|---|---|
| `MAGIC_DRC_USE_GDS: false` | No effect — the error occurs during stream-out/writeLEF, not the DRC step itself |
| `RUN_MAGIC_STREAMOUT: false` | Breaks the flow — `Magic.WriteLEF` has a hard dependency on streamout's GDS output |
| `MAGIC_GDS_ALLOW_ABSTRACT: true` | Accepted as valid config but produces no behavioral change |
| `MAGIC_CAPTURE_ERRORS: false` | Allows the flow to proceed past the stage that was previously treating any "Error"-prefixed log line as fatal — this is what unblocked progress to a full run, but does **not** mean the underlying Magic DRC issue is resolved |

## Conclusion

`acc32_sram` passes every independent signoff check not dependent on
Magic's own DRC engine: synthesis, timing (setup and hold), LVS, antenna,
and KLayout DRC. The 389 Magic DRC violations are systematic, ruled out
as a tap-density problem by direct experiment, and correlate specifically
with the presence of macro GDS content containing layers Magic's default
Sky130A techfile does not recognize — a compatibility gap between
OpenRAM-generated GDS and Magic confirmed as a known, still-open issue in
the OpenRAM project (`VLSIDA/OpenRAM#247`). This is documented here as an
**unresolved tool/PDK integration limitation**, not a physical design
error, and not claimed as "signoff clean."

Unlike Level 1's failures (GPL-0302, PPL-0024, DPL-0036), which were
resolved by adjusting configuration parameters within the designer's
control, this limitation sits at the tool-integration layer and was not
resolved within the scope of this project.