# Xilinx XC9572 CPLD Digital Audio Router

> *"When a handful of TTL multiplexers became the weakest link in a professional digital audio system, the solution was not another PCB revision—it was the migration to a Xilinx XC9572 CPLD."*

---

# Engineering Heritage Archive

This directory preserves the complete CPLD implementation developed for the **RTAL Digital Audio Patchbay**.

Rather than serving as an audio processor, the CPLD acts as the **digital switching matrix** for the entire system, routing multiple S/PDIF sources to several independent destinations with deterministic hardware timing and virtually zero latency.

The archive contains the original engineering files, preserving both the implementation and the engineering decisions behind the project.

---

# Background

The RTAL Digital Audio Patchbay was designed as a central routing system for a professional digital audio studio.

Its purpose was to connect multiple digital audio sources—including CD players, DAT recorders, DCC recorders, PC audio interfaces and other S/PDIF equipment—to several independent digital outputs without unnecessary signal processing.

From the very beginning, one design goal was absolute transparency:

> **The digital audio data should never be modified—only routed.**

The CPLD therefore performs pure hardware switching without buffering, resampling or software intervention.

---

# From TTL Logic to CPLD

The earliest prototype implemented the routing logic using several **74LS150 16-channel multiplexers**.

Initially, this solution appeared to be reliable and fulfilled all functional requirements.

However, extended operation inside a fully populated 19-inch studio rack revealed an unexpected issue.

During long recording and mixing sessions, the ambient temperature inside the rack increased considerably.

Although the 74LS150 devices continued to operate within specification, they occasionally introduced timing variations and signal integrity problems on the high-speed S/PDIF signals.

The effects included:

* occasional digital clicks
* short audio dropouts
* increased jitter sensitivity
* unstable behaviour after several hours of continuous operation

These effects were extremely difficult to reproduce under laboratory conditions but became noticeable during professional studio use.

Rather than attempting incremental improvements with additional TTL circuitry, the complete routing logic was redesigned.

The entire switching matrix was migrated into a **Xilinx XC9572 CPLD**, eliminating the temperature-dependent behaviour while significantly simplifying the hardware.

This redesign proved to be completely reliable during continuous studio operation.

---

# Why the XC9572?

The XC9572 offered several advantages over discrete TTL logic.

## Deterministic Hardware

All routing decisions are implemented directly in programmable hardware.

No software timing is involved once the control bus has been updated.

---

## Signal Integrity

Replacing multiple cascaded TTL multiplexers with a single CPLD significantly reduced propagation delay and improved signal quality on the S/PDIF lines.

---

## Reduced Component Count

Instead of numerous logic ICs and associated glue logic, the entire routing controller became a single programmable device.

---

## Flexibility

Future routing modifications required only a CPLD update instead of a PCB redesign.

---

# System Architecture

```text
                 System Microcontroller
                          │
                 Parallel Control Bus
          A1...A4  B5...B8  C9...C12  D13...D15  E16...E19
                          │
                          ▼
             +-----------------------------+
             |     Xilinx XC9572 CPLD      |
             |     Digital Audio Router    |
             +-----------------------------+
          │         │          │          │
          ▼         ▼          ▼          ▼
      DA_OUT    REC1_OUT   REC2_OUT   DIG_OUT
```

The microcontroller simply selects the desired routing configuration.

The CPLD performs all switching autonomously in hardware.

---

# Supported Digital Sources

Every input is available as both optical (TOSLINK) and coaxial S/PDIF.

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

The CPLD independently controls the routing towards:

* Digital-to-Analog Converter
* Digital Output
* Recorder 1
* Recorder 2
* DSP Interface
* PC Interface
* AUX Output
* Front Connector
* Error Output

Multiple destinations may be active simultaneously.

---

# Control Interface

The CPLD communicates with the system controller through a dedicated parallel control bus.

```
A1...A4
B5...B8
C9...C12
D13...D15
E16...E19
```

Each control word represents a routing configuration.

The CPLD decodes these signals internally and immediately establishes the requested digital connections.

---

# Original Engineering Files

This archive includes the original development files.

| File   | Description               |
| ------ | ------------------------- |
| `.abl` | Original ABEL source code |
| `.jed` | Programming file          |
| `.pad` | Pin assignment report     |
| `.rpt` | Device utilisation report |
| `.vhf` | Generated VHDL netlist    |
| `.prj` | Project files             |
| `.ngc` | Synthesized netlist       |

These files document the original implementation and allow the design to be studied, archived and programmed into compatible XC9572 devices.

---

# Historical Significance

This project reflects a period when CPLDs became an elegant replacement for increasingly complex TTL logic.

The migration from discrete multiplexers to programmable logic solved a real-world reliability problem while simultaneously reducing hardware complexity.

It demonstrates how engineering decisions are often driven by practical experience gained during long-term operation rather than theoretical design considerations alone.

---

# Preservation

This repository preserves the original CPLD implementation as part of the **RTAL Engineering Heritage Archive**.

The design remains available for documentation, educational purposes, historical preservation and future restoration of the original Digital Audio Patchbay hardware.

---

## Design Information

**Device**

* Xilinx XC9572-15-PC84

**Original Development**

* ABEL HDL
* Xilinx ISE

**Function**

Digital S/PDIF Routing Matrix

---

> *"Good engineering is often invisible. When everything works flawlessly, the design quietly disappears behind the music."*

---

© RTAL – RealTimeAudioLab

**Engineering Heritage Archive**
