# AXI4-Lite Peripheral — SKY130HD Physical Design

## Design
- Top module: axi4lite_peripheral
- Technology platform: SKY130HD
- Target clock period: 10 ns (100 MHz)
- Core utilization target: 35%

## Implementation Flow
1. RTL synthesis
2. Floorplanning
3. Standard-cell placement
4. Clock tree synthesis
5. Global and detailed routing
6. Parasitic extraction
7. Final GDS generation

## Reported Results
- Synthesized cells: 834
- Final reported design area, excluding fill cells: 9,540 um^2
- Worst reported slack: +5.13 ns
- Setup violations reported: 0
- Hold violations reported: 0
- Estimated power: approximately 1.55 mW

## Artifacts
- `results/6_final.gds`: final layout
- `results/6_final.def`: final design exchange format
- `results/6_final.odb`: final OpenROAD database
- `results/6_final.sdc`: final timing constraints
- `results/6_final.spef`: extracted parasitics
- `results/6_final.v`: final implementation netlist
- `reports/`: timing reports and physical-design visualizations

## Verification Status
The RTL-to-GDS implementation flow completed successfully.
The reported routing, setup, and hold checks passed.

Independent foundry-style DRC and LVS verification has not yet
been established. The reported power figure is an estimate,
not a signoff power result.
