LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

PACKAGE motor_driver_pkg IS
    COMPONENT motor_driver
        PORT (
            motorctrl : IN STD_LOGIC;  -- Control signal (e.g., from Arduino)
            clk : IN STD_LOGIC;  -- Clock input
            pwm : OUT STD_LOGIC  -- PWM output for controlling the motor
        );
    END COMPONENT;
END PACKAGE motor_driver_pkg;
