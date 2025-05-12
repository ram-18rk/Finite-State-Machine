# Finite-State-Machine
Traffic Light Control
# Traffic Light FSM Design

This repository contains a Verilog implementation of a traffic light system using a finite state machine (FSM). The system is designed to transition between Red, Green, and Yellow states based on a 4-bit timer. ModelSim was used to verify the design and generate output waveforms.

## Project Overview

The traffic light FSM consists of three main states:
- **Red (2'b00)**
- **Green (2'b01)**
- **Yellow (2'b10)**

The FSM transitions between these states in a fixed sequence with a timer. When the timer reaches a value of 9, the FSM changes to the next state.

## Verilog Code

The core Verilog module is located in the `src/traffic_light_fsm.v` file. This module implements the FSM logic and provides a 3-bit output to control the traffic light signals:
- **Red**: `3'b100`
- **Yellow**: `3'b010`
- **Green**: `3'b001`

## Simulation and Verification

A testbench for the FSM is provided in the `sim/traffic_light_fsm_tb.v` file. The testbench includes the simulation of the FSM's behavior over time and produces waveforms that verify the state transitions.

To simulate the design with ModelSim:
1. Compile the Verilog source and testbench files.
2. Run the simulation.
3. View the output waveforms to verify correct functionality.

Simulation waveforms are located in the `sim/output_waveforms/` directory.

## Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/traffic-light-fsm-verilog.git
