LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY motor_driver IS
    PORT (
        motorctrl : IN STD_LOGIC;   -- Trigger signal for motor activation
        clk : IN STD_LOGIC;         -- Clock input
        pwm : OUT STD_LOGIC         -- PWM output to control the servo motor
    );
END motor_driver;

ARCHITECTURE motor_driver_arch OF motor_driver IS
    -- Constants for PWM generation
    CONSTANT clk_freq : INTEGER := 50000000;  -- FPGA clock frequency (50 MHz)
    CONSTANT pwm_period : INTEGER := clk_freq / 50;  -- 20 ms period (50 Hz PWM)
    CONSTANT open_duty : INTEGER := pwm_period / 10; -- 2 ms pulse (90 degrees)
    CONSTANT close_duty : INTEGER := pwm_period / 20; -- 1 ms pulse (0 degrees)
    
    -- Signals for PWM generation
    SIGNAL cnt : INTEGER := 0;          -- Counter for PWM period
    SIGNAL duty_cycle : INTEGER := close_duty; -- Default duty cycle (0 degrees)
    
    -- Timing control
    SIGNAL motor_active : BOOLEAN := FALSE; -- Tracks if motor is active
    SIGNAL delay_cnt : INTEGER := 0;        -- Counter for 2-second delay
    CONSTANT delay_time : INTEGER := clk_freq * 2; -- 2-second delay (50 MHz clock)
BEGIN
    -- PWM Signal Generation
    PROCESS(clk)
    BEGIN
        IF rising_edge(clk) THEN
            -- Increment the PWM counter
            IF cnt < pwm_period THEN
                cnt <= cnt + 1;
            ELSE
                cnt <= 0;  -- Reset counter after one PWM period (20 ms)
            END IF;

            -- Generate PWM signal based on duty cycle
            IF cnt < duty_cycle THEN
                pwm <= '1';
            ELSE
                pwm <= '0';
            END IF;
        END IF;
    END PROCESS;

    -- Motor Control Logic
    PROCESS(clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF motorctrl = '1' AND NOT motor_active THEN
                -- Activate motor: Move to 90 degrees (2 ms pulse)
                duty_cycle <= open_duty;
                motor_active <= TRUE;
                delay_cnt <= 0;  -- Reset delay counter
            END IF;

            -- Delay and reset motor position
            IF motor_active THEN
                IF delay_cnt < delay_time THEN
                    delay_cnt <= delay_cnt + 1;
                ELSE
                    -- Reset motor to 0 degrees (1 ms pulse) after 2 seconds
                    duty_cycle <= close_duty;
                    motor_active <= FALSE;  -- Deactivate motor
                END IF;
            END IF;
        END IF;
    END PROCESS;

END motor_driver_arch;
