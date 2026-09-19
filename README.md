# CLA8 Practice — OpenLane 2 Core Utilization Sweep

Thực hành RTL-to-GDSII với OpenLane 2 + Sky130 PDK, tập trung vào khái niệm
**Core Utilization** trong floorplan planning.

## Design

8-bit Carry Lookahead Adder (CLA8) — mạch thuần tổ hợp (combinational),
xây dựng hierarchical từ 2 khối `cla4` (4-bit CLA) ghép nối tiếp.

- `src/cla4.v` — module CLA 4-bit, carry lookahead tường minh (không ripple)
- `src/cla8.v` — top module, ghép 2 khối cla4
- `src/cla8_tb.v` — testbench self-checking, 200+ test case ngẫu nhiên + corner case

Verify bằng Icarus Verilog trước khi đưa vào PD flow:
```bash
iverilog -o cla8_test src/cla4.v src/cla8.v src/cla8_tb.v
vvp cla8_test
```

## Thí nghiệm: Core Utilization Sweep

Chạy cùng 1 RTL qua OpenLane 2 với 3 mức `FP_CORE_UTIL` khác nhau, quan sát
ảnh hưởng thực tế lên die size và khả năng đóng flow thành công.

### Cách chạy

```bash
docker run --rm \
  -v $HOME:$HOME \
  -v $HOME/.volare:$HOME/.volare \
  -e PDK_ROOT=$HOME/.volare \
  -w $(pwd) \
  ghcr.io/efabless/openlane2:2.3.10 \
  openlane --pdk sky130A --run-tag util40 config_util40.json
```
(đổi `util40`/`config_util40.json` thành `util60`/`util80` tương ứng cho 2 bản còn lại)

### Kết quả

| Metric | 40% target | 60% target | 80% target |
|---|---|---|---|
| Die area (µm²) | 2387.48 | 1832.76 | N/A |
| Core area (µm²) | 1066.02 | 653.126 | N/A |
| Cell area (µm²) | 431.664 | 420.403 | N/A |
| Utilization thực tế (%) | 40.49 | 64.4 | N/A |
| Kết quả | PASS | PASS | **FAIL — GPL-0302** |

### Kết luận

Bản 80% thất bại với lỗi `[GPL-0302] Use a higher -density or re-floorplan
with a larger core area` — xác nhận bằng thực nghiệm rằng target "80-85%"
trong tài liệu lý thuyết (dành cho node 5nm) **không áp dụng được cho
Sky130 (node 130nm)**. Utilization target phụ thuộc vào công nghệ/node,
không phải con số cố định universal.

Với Sky130, utilization thực tế quanh 60-65% chạy ổn định (khớp với nhóm
"28nm+" trong bảng lý thuyết), trong khi target cao hơn cần thêm biện pháp
tối ưu khác (density-driven placement, thay đổi cell library...) mới khả thi.

## Công cụ dùng

- Icarus Verilog (simulation/verify RTL)
- OpenLane 2 (`ghcr.io/efabless/openlane2:2.3.10`, chạy qua Docker)
- Sky130A PDK (quản lý qua Volare)
- VS Code + Remote-WSL (Ubuntu 24.04)

## Bước tiếp theo

- Thử dò tìm ngưỡng utilization tối đa thực tế Sky130 chịu được (ví dụ 65%,
  70%, 75%) để xác định chính xác giới hạn thay vì chỉ biết 80% fail
- Cấp 2: thực hành PDN — thay đổi `FP_PDN_VPITCH`/`FP_PDN_HPITCH`, phân tích
  IR drop