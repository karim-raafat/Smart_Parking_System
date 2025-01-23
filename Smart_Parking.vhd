LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE WORK.motor_driver_pkg.ALL;  -- Import motor driver package

ENTITY Smart_Parking IS
    PORT (
        clk : IN STD_LOGIC;  -- Clock signal
        a : IN STD_LOGIC;    -- Signal from Arduino (car detected or not)
        digitOut : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);  -- Seven-segment display output
        pwm : OUT STD_LOGIC  -- PWM signal for servo motor
    );
END Smart_Parking;

ARCHITECTURE MyArchitecture OF Smart_Parking IS
    -- Signals for car counting
    SIGNAL carCountSignal : INTEGER RANGE 0 TO 9 := 0;  -- Car count (0-9 only)
    SIGNAL digitBin : STD_LOGIC_VECTOR(3 DOWNTO 0);     -- 4-bit binary for display
    SIGNAL a_sync1, a_sync2, a_prev : STD_LOGIC := '0'; -- Synchronized signals
    SIGNAL motorctrl : STD_LOGIC := '0';                -- Control signal for motor
BEGIN
    -- Synchronize the input signal
    PROCESS(clk)
    BEGIN
        IF rising_edge(clk) THEN
            a_sync1 <= a;         -- First-stage flip-flop
            a_sync2 <= a_sync1;   -- Second-stage flip-flop
        END IF;
    END PROCESS;

    -- Edge detection and counting logic
    PROCESS(clk)
    BEGIN
        IF rising_edge(clk) THEN
            -- Detect rising edge of the synchronized signal (sensor pressure applied)
            IF a_sync2 = '1' AND a_prev = '0' THEN
                -- Increment count only when pressure is detected
                IF carCountSignal < 9 THEN
                    carCountSignal <= carCountSignal + 1;  -- Increment count
                ELSE
                    carCountSignal <= 0;  -- Reset to 0 if it exceeds 9
                END IF;

                -- Trigger motor to move
                motorctrl <= '1';
            ELSE
                motorctrl <= '0';  -- Reset motor control signal
            END IF;

            a_prev <= a_sync2;  -- Update previous state of the signal
        END IF;
    END PROCESS;

    -- Convert count to binary for 7-segment display
    digitBin <= STD_LOGIC_VECTOR(TO_UNSIGNED(carCountSignal, digitBin'LENGTH));

    -- Instantiate the seven-segment display decoder
    seven_segment_inst : ENTITY work.seven_segment
        PORT MAP (
            a => digitBin,    -- Input to the decoder
            f => digitOut     -- Output to the 7-segment display
        );

    -- Instantiate the motor driver
    motor_driver_inst : motor_driver
        PORT MAP (
            motorctrl => motorctrl,  -- Control signal for motor
            clk => clk,              -- Clock input
            pwm => pwm               -- PWM output to servo motor
        );

END MyArchitecture;
