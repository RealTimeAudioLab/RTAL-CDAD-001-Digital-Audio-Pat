# CPLD Digital Audio Router

> **Engineering Heritage Archive**
> Original CPLD implementation of the **RTAL Digital Audio Patchbay**

---

# Digital Audio Routing Logic

This directory contains the complete CPLD implementation used inside the RTAL Digital Audio Patchbay.

The design is based on a **Xilinx XC9572-15-PC84** CPLD and implements the complete hardware routing logic for multiple S/PDIF digital audio sources.

Unlike a DSP, FPGA or microcontroller, the CPLD performs **pure hardware routing** with deterministic timing and virtually zero latency.

---

# Why a CPLD?

The very first prototype of the Digital Audio Patchbay used several **74LS150 16-channel multiplexers** as the routing logic.

While the design worked correctly during development, a reliability issue became apparent during continuous operation inside a professional studio rack.

After several hours of operation, the temperature inside the rack increased significantly. Under these conditions, the 74LS150 devices occasionally introduced disturbances on the high-speed S/PDIF signals.

Although the logic itself continued to function, the signal integrity degraded enough to produce audible clicks, dropouts and digital artefacts during audio playback.

To eliminate this problem permanently, the complete routing logic was redesigned and implemented inside a **Xilinx XC9572 CPLD**.

The CPLD replacement provided several important advantages:

* Excellent signal integrity
* Deterministic hardware timing
* Extremely low propagation delay
* Lower component count
* Improved long-term reliability
* Simplified PCB routing
* Greater flexibility for future modifications

The result was a stable system capable of continuous 24/7 operation without the temperature-related signal degradation observed in the original TTL implementation.

---

# System Architecture

```text
                     Microcontroller
                           │
                Parallel Control Bus
               (A1...A4, B5...B8, ...)
                           │
                           ▼
                +----------------------+
                |  Xilinx XC9572 CPLD  |
                | Digital Audio Router |
                +----------------------+
          │          │          │
          ▼          ▼          ▼
      DA_OUT     REC1_OUT   REC2_OUT
          │          │          │
          └────── Digital Audio Matrix ──────┘
```

The microcontroller simply selects the desired routing configuration.

The CPLD immediately performs all switching operations entirely in hardware.

---

# Digital Audio Sources

Each source provides both optical (TOSLINK) and coaxial S/PDIF inputs.

| Source        | Optical | Coaxial |
| ------------- | :-----: | :-----: |
| CD Player     |    ✓    |    ✓    |
| DAT Recorder  |    ✓    |    ✓    |
| DSR Receiver  |    ✓    |    ✓    |
| DCC Recorder  |    ✓    |    ✓    |
| PC            |    ✓    |    ✓    |
| Sound Blaster |    ✓    |    ✓    |
| AUX           |    ✓    |    ✓    |

---

# Output Destinations

The CPLD routes the selected source to one or more outputs simultaneously.

* DA Converter
* Digital Output
* Recorder 1
* Recorder 2
* DSP Interface
* PC Interface
* AUX Output
* Front Connector
* Error Output

Multiple outputs can be active at the same time.

---

# Control Bus

The CPLD is controlled through a dedicated parallel interface.

```text
A1...A4
B5...B8
C9...C12
D13...D15
E16...E19
```

The microcontroller generates the required control words while the CPLD performs all routing internally.

This architecture keeps the firmware simple while guaranteeing deterministic hardware switching.

---

# Original Design Files

This archive preserves the original engineering files.

```
*.abl   Original ABEL source code
*.jed   Programming file
*.pad   Pin assignments
*.rpt   Fitter report
*.vhf   Generated VHDL netlist
*.prj   Project files
```

These files represent the original implementation and allow the CPLD to be studied, documented and reprogrammed.

---

# Engineering Notes

This design represents an interesting example of digital hardware engineering from the late 1990s and early 2000s.

At that time, CPLDs offered an elegant alternative to large numbers of discrete TTL devices.

Replacing the original TTL routing logic with a programmable CPLD not only reduced component count but also significantly improved signal integrity and long-term operational stability.

The project demonstrates how practical engineering decisions are often driven by real-world operating conditions rather than theoretical circuit design alone.

---

# Preservation

This directory is maintained as part of the **RTAL Engineering Heritage Archive**.

The original source files are preserved in their original form whenever possible to document the engineering decisions, implementation techniques and digital hardware design methods used during the development of the RTAL Digital Audio Patchbay.

---

© RTAL – RealTimeAudioLab

Engineering Heritage Archive
