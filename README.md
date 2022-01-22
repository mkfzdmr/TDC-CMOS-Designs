# TDC-CMOS-Designs
This repository contains CMOS designs and performance outputs of several **time-to-digital converter (TDC)** architectures such as **Counter, Flash, Vernier delay line (VDL), Gated Ring oscillator (GRO), hybrid, and Vernier gated ring oscillator (VGRO)**.

The realted scientific article is currently under evaluation. A detailed description of the TDC designs will be added soon.

## Introduction
<p align="justify">These TDC architectures are designed for use in Positron emission tomography (PET) imaging systems. Therefore, while the simulation coding (T-Spice) is being performed, the scintillation signals formed at the moments when the two photons, which are formed as a result of the annihilation event reach the ring-shaped detectors placed opposite each other, are labeled as "Start" and "Stop". Moreover, designed TDC architectures can be easily evolved for other uses.
</p>

## Software 
[Mentor Graphics](https://eda.sw.siemens.com/en-US/ic/ic-custom/) Tanner Tools EDA v16.3 development environment was used for the designs. It was also tested the v13.0 version.

## Technologies Files 
Technology files of [TSMC](https://www.tsmc.com/english) and [BSIM](https://bsim.berkeley.edu/) used in TDC designs can be found in [tech_files](tech_files).


## Usage
All structures designed for S-Spice are combined on a single parent file: [Parent Tanner File](TDC_Designs_MAO/TDC_Designs_MAO.tanner) (TDC_Designs_MAO/TDC_Designs_MAO.tanner). You can use this file to access all schematic drawings.

If you encounter an error that the libraries were not loaded correctly, re-include the 3 main libraries in the project:
```Python
TDC_Designs_MAO/Devices/Devices.tanner
TDC_Designs_MAO/Misc/Misc.tanner
TDC_Designs_MAO/LogicGates/LogicGates.tanner
```
Also, if you need it, the [common-digital-gates-master](common-digital-gates-master ) folder has been added.

Moreover, files containing all simulation parameters such as all simulation coding, MOSFET sizes, properties, temperature definitions, input-output definitions, technology file definitions, etc. are also presented in this file: [TDC_Designs_MAO](TDC_Designs_MAO). 

T-Spice codes can be accessed from the **"#.sp"** file of the design to be executed and the simulation can be started. (Ex.: "vernier_ring_TDC.sp").
Please note that:
Technology scaling file definitions in "#.sp" files should be edited. E.g:
```C
.include "...\tech_files\45nm.md"

Edit "..." with your location.
```
Finally, some simulation outputs are recorded. These can be accessed with **"#.cbk"** files using W-Edit.


## DOI

will be added soon

## Web Site

will be added soon

## Citation

Citation will be added soon

```

```

## Contact
If you need any help, feel free to start an issue (preferred because other people can benefit) or send me an email: [makif.ozdemir@ikcu.edu.tr](mailto:makif.ozdemir@ikcu.edu.tr)

