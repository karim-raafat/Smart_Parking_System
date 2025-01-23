# Smart Parking System 🚗🅿️

This project is a **Smart Parking System** implemented using **VHDL** and designed to run on an **FPGA** board. The system simulates a parking garage where a gate opens when a car is detected, and the number of cars in the garage is displayed on a **7-segment display**. The system uses a **servo motor** to control the gate and a **sensor** to detect the presence of a car.

---

## Project Overview

The **Smart Parking System** is designed to automate the process of counting cars entering a parking garage. The system uses a **sensor** to detect when a car approaches the gate. Upon detection, the gate opens using a **servo motor**, and the car count is incremented and displayed on a **7-segment display**. The gate closes automatically after a short delay.

This project was developed as part of the **CSEN 605: Digital System Design** course at the **Faculty of Media Engineering and Technology**, under the guidance of **Dr. Shereen Afifi**.

---

## Features

- **Car Detection**: The system uses a sensor to detect when a car approaches the gate.
- **Gate Control**: A **servo motor** is used to open and close the gate automatically.
- **Car Counting**: The number of cars in the garage is displayed on a **7-segment display**.
- **Real-Time Updates**: The car count is updated in real-time as cars enter the garage.
- **FPGA Implementation**: The system is implemented using **VHDL** and runs on an **FPGA** board.

---

## Hardware Requirements

- **FPGA Board**: DE10-Lite (or any compatible FPGA board).
- **Servo Motor**: To control the gate.
- **7-Segment Display**: To display the number of cars.
- **Sensor**: To detect the presence of a car (simulated using a button or switch).
- **Arduino**: Optional, for interfacing with analog sensors (if used).

---

## VHDL Modules

The project consists of the following VHDL modules:

1. **Smart_Parking.vhd**: 
   - Main module that integrates the car detection, gate control, and display logic.
   - **Inputs**: 
     - `clk`: Clock signal.
     - `a`: Signal from the sensor (car detected or not).
   - **Outputs**:
     - `digitOut`: Output to the 7-segment display.
     - `pwm`: PWM signal to control the servo motor.

2. **motor_driver.vhd**:
   - Controls the servo motor using PWM signals.
   - **Inputs**:
     - `motorctrl`: Control signal to activate the motor.
     - `clk`: Clock signal.
   - **Outputs**:
     - `pwm`: PWM signal to the servo motor.

3. **seven_segment.vhd**:
   - Converts a 4-bit binary input to the corresponding 7-segment display output.
   - **Inputs**:
     - `a`: 4-bit binary input (number to display).
   - **Outputs**:
     - `f`: 7-segment display output.

4. **motor_driver_pkg.vhd**:
   - Package file for the `motor_driver` component.

5. **seven_segment_pkg.vhd**:
   - Package file for the `seven_segment` component.

---

## Simulation

The project was simulated using **ModelSim** to ensure proper functionality before deployment on the FPGA board. The simulation includes:

- **Car Detection**: Simulated by toggling the `a` input signal.
- **Gate Control**: The `pwm` signal is monitored to ensure the gate opens and closes correctly.
- **Car Counting**: The `digitOut` signal is checked to ensure the 7-segment display updates correctly.

A screenshot of the simulation waveform is included in the project files.

---

## Pin Assignment

The following pin assignments are used for the **DE10-Lite FPGA board**:

- **Clock Signal (`clk`)**: Pin `PIN_AF14` (50 MHz clock).
- **Sensor Input (`a`)**: Pin `PIN_AA14` (simulated using a button).
- **7-Segment Display (`digitOut`)**: Pins `PIN_AE26`, `PIN_AE27`, `PIN_AE28`, `PIN_AG27`, `PIN_AF28`, `PIN_AG28`, `PIN_AH28`.
- **Servo Motor PWM (`pwm`)**: Pin `PIN_AF9`.

---

## How to Run

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/smart-parking-system.git
   cd smart-parking-system
   ```

2. **Open the Project in Quartus**:
   - Open the Quartus Prime software.
   - Load the project files.
   - Compile the project.

3. **Program the FPGA**:
   - Connect the DE10-Lite FPGA board to your computer.
   - Program the FPGA with the compiled `.sof` file.

4. **Test the System**:
   - Use a button or switch to simulate car detection.
   - Observe the 7-segment display and servo motor behavior.

---

## Technologies Used: -
- **Programming Language**: VHDL
- **FPGA Board**: DE10-Lite (or compatible FPGA boards)
- **Simulation Tool**: ModelSim

## Hardware Components: -

- **Servo Motor**: To control the gate.
- **7-Segment Display**: To display the car count.
- **Pressure Sensor**: To detect the presence of a car (simulated using a button or switch).
- **Tools**: Quartus Prime for FPGA programming and synthesis.

---

## Contributors

- **Karim Raafat**
- **Mahmoud Abdelgawad**
- **Mahmoud Khairy** 
- **Mariam Elsheikh**
- **Nada Elattar**
- **Ziad Tantawy**

---

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

- **Dr. Shereen Afifi** for guidance and support.
- **Faculty of Media Engineering and Technology** for providing the resources and FPGA boards.
