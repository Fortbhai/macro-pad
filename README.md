# macro-pad
## preview
![Website Preview](https://github.com/Fortbhai/macro-pad/blob/main/Screenshot%202026-08-10%20145616.png)
# Macro Pad

A customizable 3‑key macro pad designed for productivity, gaming, and creative workflows.  
This repo contains **firmware, hardware design files, documentation, and a complete BOM** so anyone can build, flash, and ship their own macro pad.


## Features
- 3 programmable mechanical keys
- Compatible with QMK firmware
- Compact PCB design
- USB‑C connectivity
- Open‑source case design files 



##  Repository Structure
- **README.md** → Project overview and instructions  
- **BOM.md** → Complete list of required parts  
- **firmware/** → QMK firmware files 
- **hardware/** → PCB and case design files 



##  Bill of Materials (BOM)
See [BOM.md](https://github.com/Fortbhai/macro-pad/blob/main/BOM) for the full list of parts, including switches, diodes, PCB, and microcontroller.


##  Assembly Guide

1. Solder diodes to the PCB.  
2. Mount switches and keycaps.  
3. Attach the Arduino Pro Micro.  
4. Assemble case (top + bottom).  
5. Connect via USB‑C.  
6. Flash firmware using QMK Toolbox.  




##  Firmware
Firmware files are located in [firmware/](./firmware).  
Compile with QMK:
```bashqmk compile -kb macro_pad -km default



