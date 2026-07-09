# CROC Chip ASIC Physical Implementation

This project presents the complete ASIC physical implementation flow of the **CROC processor** using **Cadence Innovus**. The implementation covers the complete ASIC back-end flow from the synthesized netlist to post-route optimization, including timing closure and physical verification.

## Features

- Complete ASIC physical design flow using Cadence Innovus
- Multi-Mode Multi-Corner (MMMC) timing analysis
- Floorplanning and macro placement
- Power planning (PG rings and meshes)
- Standard-cell placement and optimization
- Clock Tree Synthesis (CTS)
- Routing and post-route optimization
- Timing analysis and timing closure
- Physical verification (DRC, connectivity, and power grid)

## Design Flow

```text
Netlist
   │
   ▼
Initialization
   │
   ▼
Floorplanning
   │
   ▼
Power Planning
   │
   ▼
Placement
   │
   ▼
Clock Tree Synthesis (CTS)
   │
   ▼
CTS Optimization
   │
   ▼
Routing
   │
   ▼
Post-route Optimization
   │
   ▼
Timing & Physical Verification
```

## Project Structure

```text
.
├── init/                  # Initialization scripts
├── scripts/               # Tcl scripts
├── input_data/
│   ├── lef/
│   ├── lib/
│   ├── netlist/
│   └── sdc/
├── reports/               # Timing and verification reports
├── img/                   # Layout screenshots
└── README.md
```

## Implementation Results

| Metric | Result |
| :------ | :----- |
| Target Frequency | 100 MHz |
| Standard-cell Utilization | 58.09% |
| Final reg2reg WNS | -0.025 ns |
| Final mem2reg WNS | 0.172 ns |
| Final reg2mem WNS | 0.600 ns |
| Final DRC Violations | 0 |
| Final Short Violations | 0 |

## Tools

- Cadence Innovus
- Tcl
- MMMC
- LEF / Liberty / SDC

## Author

**Le Huu Luong**
