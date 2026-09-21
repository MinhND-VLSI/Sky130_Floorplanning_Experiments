# CLA32 Floorplanning — Sky130 Physical Design Practice

Hands-on RTL-to-GDSII practice with OpenLane 2 on the Sky130 PDK,
systematically exploring floorplan/PDN/macro-integration concepts across
three levels of experiments, contrasting combinational and sequential
design behavior throughout.

## Design structure

The whole project is built on one shared building block — `cla4` (4-bit
Carry Lookahead Adder, explicit carry equations) — assembled
hierarchically into progressively larger variants:

| Module | File | Description |
|---|---|---|
| `cla4` | `src/cla4.v` | 4-bit CLA, base building block |
| `cla8` | `src/cla8.v` | 8-bit CLA (2× cla4), combinational |
| `cla32` | `src/cla32.v` | 32-bit CLA (8× cla4, generate loop), combinational |
| `acc8` | `src/acc8.v` | 8-bit accumulator, wraps cla8 with a sequential register |
| `acc32` | `src/acc32.v` | 32-bit accumulator, wraps cla32 with a sequential register |
| `acc32_sram` | `src/acc32_sram.v` | acc32 + SRAM macro integration (see `macros/`) |

Every module has a dedicated self-checking testbench (`*_tb.v`), verified
with Icarus Verilog before entering the PD flow:

```bash
iverilog -o <name>_test src/cla4.v src/<name>.v src/<name>_tb.v
vvp <name>_test
```

`acc32_sram` additionally requires the SRAM behavioral model and a
blackbox stub — see `macros/` below.

## Experiment structure

**Level 1 — Core Utilization Sweep**
(`config_{cla8,cla32,acc8,acc32}_util{40,60,80}.json`): both combinational
and sequential variants run in parallel to contrast failure mechanisms
(GPL-0302, PPL-0024, DPL-0036) across `FP_CORE_UTIL` targets. Full
results and analysis: `results.md`.

**Level 2 — PDN Strap Pitch Sweep** (`config_pdn_{narrow,wide}.json`):
run on `acc32` (sequential) only, since dynamic switching activity
through CTS is required to observe any pitch-dependent effect on IR drop
— combinational designs do not exhibit this.

**Level 3 — Macro Placement** (`config_acc32_sram.json`): `acc32`
extended with a 1KB SRAM macro (`sky130_sram_1kbyte_1rw1r_32x256_8`,
sourced from `VLSIDA/sky130_sram_macros`). Covers macro-specific OpenLane
2 configuration (`MACROS`, `PDN_MACRO_CONNECTIONS`), RTL-level
read/write synchronization with a synchronous SRAM model, and a
documented, unresolved Magic DRC/OpenRAM GDS compatibility issue. See
`results.md` for the full investigation.

From Level 2 onward, sequential designs are the default; combinational
variants are only reintroduced when a specific experimental question
requires the comparison.

## SRAM macro (`macros/`)
```
macros/
├── sky130_sram_macros/                                    
│   └── sky130_sram_1kbyte_1rw1r_32x256_8/
│       ├── sky130_sram_1kbyte_1rw1r_32x256_8.v            
│       ├── sky130_sram_1kbyte_1rw1r_32x256_8.lef          
│       ├── sky130_sram_1kbyte_1rw1r_32x256_8.gds          
│       └── sky130_sram_1kbyte_1rw1r_32x256_8_TT_1p8V_25C.lib  
└── blackbox/
    └── sky130_sram_1kbyte_1rw1r_32x256_8_bb.v             
```

The behavioral `.v` file is used only for Icarus Verilog simulation; the
blackbox stub is used only for OpenLane synthesis, so Yosys treats the
macro as a fixed pre-existing block rather than attempting to synthesize
its internals.

## Tools

- Icarus Verilog 14.0 — RTL simulation/verification
- OpenLane 2 (`ghcr.io/efabless/openlane2:2.3.10`) — run via Docker
- Sky130A PDK — managed via Volare
- VS Code + Remote-WSL (Ubuntu 24.04)

## Running a configuration

```bash
docker run --rm \
  -v $HOME:$HOME \
  -v $HOME/.volare:$HOME/.volare \
  -e PDK_ROOT=$HOME/.volare \
  -w $(pwd) \
  ghcr.io/efabless/openlane2:2.3.10 \
  openlane --pdk sky130A --run-tag <tag> config_<name>.json
```

Results are written to `runs/<tag>/final/metrics.json` (area/utilization
figures) and `runs/<tag>/error.log` (error confirmation, empty on a clean
run).

## Status summary

| Level | Status |
|---|---|
| 1 — Core Utilization | Complete — 4 designs × 3 targets, all failure modes characterized |
| 2 — PDN Pitch | Complete — pitch-dependent IR drop trend observed on VGND |
| 3 — Macro Placement | Functionally complete (synthesis/timing/LVS/antenna/KLayout DRC pass); Magic DRC blocked by a documented, unresolved OpenRAM/Magic layer-compatibility issue |