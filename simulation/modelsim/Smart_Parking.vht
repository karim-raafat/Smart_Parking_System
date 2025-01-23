LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY tb_Smart_Parking IS
END tb_Smart_Parking;

ARCHITECTURE behavior OF tb_Smart_Parking IS
    -- Component declaration for the Smart_Parking entity
    COMPONENT Smart_Parking
        PORT (
            clk : IN STD_LOGIC;
            a : IN STD_LOGIC;
            digitOut : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
            pwm : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Signals to connect to the Smart_Parking entity
    SIGNAL clk : STD_LOGIC := '0';  -- Clock signal
    SIGNAL a : STD_LOGIC := '0';    -- Arduino input signal (car detected or not)
    SIGNAL digitOut : STD_LOGIC_VECTOR(6 DOWNTO 0);  -- Seven-segment display output
    SIGNAL pwm : STD_LOGIC;         -- PWM signal for servo motor

    -- Constant for simulation time
    CONSTANT clk_period : TIME := 20 ns; -- Clock period (50 MHz)
BEGIN
    -- Instantiate the Smart_Parking component
    uut: Smart_Parking
        PORT MAP (
            clk => clk,
            a => a,
            digitOut => digitOut,
            pwm => pwm
        );

    -- Clock generation process
    PROCESS
    BEGIN
        -- Toggle clock every half period (for 50 MHz clock)
        WAIT FOR clk_period / 2;
        clk <= NOT clk;
    END PROCESS;

    -- Stimulus process to simulate the car detection and motor control
    PROCESS
    BEGIN
        -- Initially, no car detected, pwm should be off, digit should be 0
        a <= '0';  -- No car detected
        WAIT FOR 100 ns;

        -- Simulate car detection (pressing on FSR sensor)
        a <= '1';  -- Car detected
        WAIT FOR 100 ns;

        -- End simulation after several cycles
        WAIT FOR 500 ns;
        ASSERT FALSE REPORT "Testbench completed successfully" SEVERITY note;
        WAIT;
    END PROCESS;
END behavior;
