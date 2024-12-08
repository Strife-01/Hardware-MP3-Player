# Hardware MP3 Player

This project implements a hardware-driven MP3 player using the PIC18F47Q10, an 8-bit microcontroller from Microchip. The design focuses on efficient audio playback and user control via a button matrix, utilizing timers and hardware interrupts for responsiveness.

---

## Features

- **Microcontroller**: PIC18F47Q10
- **Audio Decoder**: KT403A MP3 decoder module
- **Storage**: MicroSD card interface for MP3 file storage
- **User Interface**: Button matrix for playback controls and volume adjustment
- **Communication Protocol**: UART at 9600 baud rate
- **Timers and Hardware Interrupts**: Used for button matrix scanning and efficient handling of user input
- **Power Supply**: Battery-powered with charging circuitry

---

## Technologies Used

### C Programming Language
![C Programming Language](https://raw.githubusercontent.com/github/explore/main/topics/c/c.png)

### Microchip
![Microchip Logo](https://upload.wikimedia.org/wikipedia/commons/c/ca/Microchip-Logo.svg)

---

## Demo Video

[![Hardware MP3 Player Showcase](https://youtube.com/shorts/rEAz2YuEyKI?feature=share)](https://youtube.com/shorts/rEAz2YuEyKI?feature=share)

> *Click on the image above to watch a quick demo of the project.*

---

## Components Needed

1. **Microcontroller**: PIC18F47Q10
2. **Audio Decoder**: KT403A MP3 decoder module
3. **Cables**: Jumper wires for connections
4. **Power Supply**: 5V power source
5. **MicroSD Card**: To store MP3 files
6. **Button Matrix**: For user controls
7. **Breadboard or PCB**: To assemble the components

---

## Hardware Connections

### Connecting the KT403A Decoder

1. **Power Connections**:
   - Connect the **GND** pin of the KT403A to the microcontroller's ground.
   - Connect the **5V** pin of the KT403A to the microcontroller's 5V power supply.

2. **UART Connections**:
   - Cross-connect the UART lines:
     - Connect the **RX** pin of the KT403A to the **TX** pin of the PIC18F47Q10.
     - Connect the **TX** pin of the KT403A to the **RX** pin of the PIC18F47Q10.

3. **Audio Output**:
   - Connect the KT403A's audio output to a speaker or headphones for playback.

---

## Communication Protocol

- **UART**: 
  - Baud rate: 9600 bps
  - Commands are sent over UART to control playback, pause, stop, next/previous track, and adjust volume.

---

## Button Matrix Multiplexing

A custom algorithm for multiplexing button matrixes enables efficient detection of button presses. This minimizes I/O pin usage while maintaining responsiveness through the use of timers and hardware interrupts.

---

## Timers and Hardware Interrupts

- **Timers**: 
  - Used for periodic scanning of the button matrix.
  - Ensures accurate timing for scanning cycles, improving the detection of button presses.
  
- **Hardware Interrupts**: 
  - Interrupt-driven design ensures low latency response to critical events, such as button presses and UART communication.
  - Allows the system to handle user input while maintaining smooth MP3 playback.

---

## Software

The firmware is developed in **C** using MPLAB X IDE with the XC8 compiler. It handles:

- **Button Matrix Scanning**: Implements a custom algorithm for multiplexing, driven by timer-based interrupts.
- **MP3 Playback**: Communicating with the KT403A for audio decoding via UART.
- **File Management**: Reading MP3 files from the MicroSD card.
- **Volume Control**: Sending commands to adjust playback volume based on button inputs.
- **Interrupt Handling**: Efficiently manages timers, UART communication, and button inputs.

---

## Getting Started

### Prerequisites

- MPLAB X IDE
- XC8 Compiler
- PICkit 4 or compatible programmer
- **KT403A Decoder Module** (required)
- **Connection Wires** (for GND, 5V, RX, and TX)

### Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/Strife-01/Hardware-MP3-Player.git
2. Open the project in **MPLAB X IDE**.
3. Connect the **PICkit 4** to the development board.
4. Connect the **KT403A decoder module** as per the hardware connections section.
5. Build and program the firmware to the **PIC18F47Q10**.

---

## Usage

- **Play/Pause**: Press the corresponding button on the matrix to start or pause playback.
- **Next/Previous Track**: Use the respective buttons to navigate between tracks.
- **Volume Control**: Adjust playback volume using the volume-up and volume-down buttons on the matrix.

The button matrix allows intuitive control over playback and volume, while the use of timers and interrupts ensures a seamless user experience with minimal latency.

---

## License

This project is licensed under the **GNU General Public License v3.0**. See the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

- **Microchip** for the PIC18F47Q10 microcontroller.
- **KT Electronic Technology** for the KT403A MP3 decoder module.
- Contributors to the open-source libraries used in this project.

For more information, visit the [project repository](https://github.com/Strife-01/Hardware-MP3-Player).
