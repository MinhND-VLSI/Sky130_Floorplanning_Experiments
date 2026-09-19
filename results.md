# Cấp 1 — Core Utilization Sweep (CLA8)

PDK: sky130A
Design: cla8 (8-bit Carry Lookahead Adder)

| Metric | 40% target | 60% target | 80% target |
|---|---|---|---|
| Die area (µm²) | 2387.48 | 1832.76 | N/A |
| Core area (µm²) | 1066.02 | 653.126 | N/A |
| Cell area (µm²) | 431.664 | 420.403 | N/A |
| Utilization thực tế (%) | 40.49 | 64.4 | N/A |
| Kết quả | PASS | PASS | **FAIL — GPL-0302** |

## Kết luận

Bản 80% thất bại với lỗi `[GPL-0302] Use a higher -density or re-floorplan
with a larger core area` — xác nhận bằng thực nghiệm rằng target "80-85%"
(dành cho node 5nm) không áp dụng được cho Sky130 (130nm). Utilization
target phụ thuộc vào công nghệ/node, không phải con số cố định universal.

Với Sky130, utilization quanh 60-65% chạy ổn định (khớp nhóm "28nm+"
trong bảng lý thuyết).