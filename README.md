# EEG Acquisition and Visualization System

## Project Overview
**EEG (Electroencephalogram)** is a method used to record the electrical activity of the brain, commonly used in medical diagnosis and research (e.g., detecting seizures, sleep studies, brain-computer interfaces).

This project implements a complete **EEG data acquisition and visualization system**, designed to capture, process, and display brain electrical activity in a clear and accessible way.

The system works in three main stages:

1. **Signal Acquisition** — EEG signals are picked up from the scalp using electrodes connected to an Arduino-based acquisition circuit, which conditions and digitizes the raw analog brain signals.
2. **Signal Processing & Transmission** — The digitized signals are transmitted from Arduino to MATLAB, where they are filtered and processed to remove noise and prepare them for analysis.
3. **Visualization** — A custom Graphical User Interface (GUI), built collaboratively by our 5-member team, displays the EEG waveforms in real time, allowing users to monitor brain activity as it happens.

Before physical implementation, the hardware design was simulated and validated using **Proteus**, ensuring the acquisition circuit (amplification, filtering, and signal conditioning stages) performs correctly before being built and tested on real hardware.

This makes the system useful for both **real-time monitoring** of EEG signals and **offline analysis** of recorded sessions, serving as a foundation for further applications such as brain-state classification or biomedical signal research.

## Project Objectives
- Acquire EEG signals using Arduino-based hardware.
- Visualize EEG waveforms in real-time using MATLAB.
- Implement a collaborative GUI for signal monitoring ([View GUI here](https://github.com/ahmedayman220/EEG-State-Classification)).
- Simulate and validate hardware design using Proteus.

## Tools & Technologies
- Arduino
- MATLAB
- GUI Development (Team effort)
- Proteus Simulation
- Signal Processing

## Project Structure
- `Arduino_Acquisition` — Arduino-based EEG signal acquisition code
- `MATLAB Code` — Signal processing & visualization scripts
- `GitHub_GUI` — Team-developed Graphical User Interface ([Link](https://github.com/alaaalim/EEG-Acquisition-and-Visualization-System/blob/main/GitHub_GUI))
- `Proteus_Circuit` — Hardware simulation using Proteus
- `Presentation` — Final project presentation
- `Report` — Complete technical documentation
- `Test Pictures` — Experimental setup and output results

## System Features
- Real-time EEG signal acquisition
- MATLAB-based visualization
- Interactive GUI (team-developed)
- Hardware simulation using Proteus

## Future Enhancements
- AI-based EEG classification
- Noise reduction using advanced filtering
- Cloud-based real-time monitoring

## Team Members
- Alaa Ali
- Caroline Samir
- Ahmed Ayman
- Mohamed Maher
- Yousef Hesham
