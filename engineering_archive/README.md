# Hardware Architecture

The **Digital Audio Patchbay** was designed as a modular system consisting of five independent hardware assemblies. Each board performs a dedicated function, resulting in a flexible, serviceable and expandable architecture.

---

# SCH-001 — CPU Board

The CPU Board is the central control unit of the Digital Audio Patchbay. It manages the user interface, system logic, CPLD communication and overall device operation.

## Main Components

| Component              | Description                         |
| ---------------------- | ----------------------------------- |
| Intel 80C32            | Main microcontroller                |
| 27C256 EPROM           | Firmware storage (Version 1)        |
| EEPROM                 | Firmware storage (Version 2)        |
| GAL20V8                | Address decoding                    |
| 74HC573                | Address/Data latch                  |
| Crystal Oscillator     | System clock                        |
| Reset Logic            | Power-on reset circuitry            |
| DSP / PC / AUX Buttons | DSP insertion path selection        |
| Front Panel LEDs       | Status indication                   |
| Control Port "E"       | Communication interface to the CPLD |

> **Function:**
> Provides the complete digital control system for the Digital Audio Patchbay.

---

# SCH-002 — Audio Matrix Part 1

Audio Matrix Part 1 implements the first half of the digital routing matrix.

The original hardware used multiplexers and GAL logic. During the second hardware revision these devices were replaced by a CPLD, improving reliability, simplifying the design and increasing routing flexibility.

## Version 1

* 74LS150 Multiplexer
* GAL Logic
* Crystal CS8412 Digital Audio Receiver

## Version 2

* CPLD replacing the complete LS150/GAL routing logic
* Error Signal from Crystal CS8412 Digital Audio Receiver used from CS8412 on DAC Board

## Supporting Components

* 74LS574 (Control Ports A–D)
* 74LS574 (Input Select LEDs)
* 74LS574 (Record Select LEDs)
* 74LS245 (Input Select Buttons)
* 74LS245 (Record Select Buttons)
* TORX Optical Digital Audio Interfaces
* Coaxial Digital Audio Interfaces

> **Function:**
> Implements the first half of the digital audio routing matrix.

---

# SCH-003 — Audio Matrix Part 2

Audio Matrix Part 2 mirrors the architecture of Part 1 and completes the routing matrix.

## Version 1

* 74LS150 Multiplexer
* GAL Logic
* Crystal CS8412 Digital Audio Receiver

## Version 2

* CPLD replacing the LS150 and GAL logic

## Supporting Components

* 74LS574 (Control Ports A–D)
* 74LS574 (Input Select LEDs)
* 74LS574 (Record Select LEDs)
* 74LS245 (Input Select Buttons)
* 74LS245 (Record Select Buttons)
* TORX Optical Digital Audio Interfaces
* Coaxial Digital Audio Interfaces

> **Function:**
> Completes the second half of the digital routing architecture.

---

# SCH-004 — DAC Audio Output Board

The DAC Output Board converts the selected digital audio stream into a high-quality analogue signal.

Special attention was paid to signal integrity, galvanic isolation and power supply quality.

## Main Components

| Component               | Description                          |
| ----------------------- | ------------------------------------ |
| Analog Devices AD1859   | High-performance DAC                 |
| Crystal CS8412          | Digital Audio Receiver               |
| ILQ74                   | Optocoupler for isolated CPU control |
| GAL Logic               | Front panel LED decoding             |
| 75176                   | Differential line receiver           |
| Audio Input Transformer | Isolation and impedance matching     |
| Dedicated Power Supply  | Low-noise analogue supply            |

> **Function:**
> Complete high-quality Digital-to-Analog conversion stage.

---

# SCH-005 — Digital Format Converter

The Digital Format Converter is an independent subsystem providing digital audio format conversion and sample-rate processing.

## Main Components

| Component             | Description                    |
| --------------------- | ------------------------------ |
| Crystal CS8402A       | Digital Audio Transmitter      |
| Analog Devices AD1893 | Sample Rate / Format Converter |
| Crystal CS8412        | Digital Audio Receiver         |

> **Function:**
> Stand-alone digital audio format conversion module.

---

# System Overview

```text
                  CPU Board
                      │
                      ▼
               CPLD Control Logic
                      │
        ┌─────────────┴─────────────┐
        ▼                           ▼
 Audio Matrix Part 1         Audio Matrix Part 2
        │                           │
        └─────────────┬─────────────┘
                      ▼
             Digital Format Converter
                      │
                      ▼
               DAC Audio Output Board
                      │
                      ▼
                 Analogue Audio Output
```

---

# Hardware Summary

| Board   | Primary Function               |
| ------- | ------------------------------ |
| SCH-001 | System Control                 |
| SCH-002 | Digital Audio Routing (Part 1) |
| SCH-003 | Digital Audio Routing (Part 2) |
| SCH-004 | Digital-to-Analog Conversion   |
| SCH-005 | Digital Format Conversion      |

---

# Engineering Note

One of the most significant hardware improvements introduced in **Version 2** was the replacement of the original **74LS150 multiplexers and GAL logic** with a **CPLD**.

Besides simplifying the routing architecture, this redesign solved reliability problems caused by the temperature-sensitive behaviour of the original LS150 devices during continuous studio operation.

The CPLD implementation resulted in improved stability, simplified maintenance and greater long-term reliability while preserving full compatibility with the original system architecture.
