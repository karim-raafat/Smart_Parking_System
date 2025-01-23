LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY seven_segment IS
    PORT (
        a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);  -- 4-bit input (number to display)
        f : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)  -- 7-segment output (corresponding segment values)
    );
END ENTITY seven_segment;

ARCHITECTURE arch_seven_segment OF seven_segment IS
BEGIN
    -- 7-segment display decoding logic
    WITH a SELECT
        f <= "1000000" WHEN "0000",  -- Display '0'
        "1111001" WHEN "0001",  -- Display '1'
        "0100100" WHEN "0010",  -- Display '2'
        "0110000" WHEN "0011",  -- Display '3'
        "0011001" WHEN "0100",  -- Display '4'
        "0010010" WHEN "0101",  -- Display '5'
        "0000010" WHEN "0110",  -- Display '6'
        "1111000" WHEN "0111",  -- Display '7'
        "0000000" WHEN "1000",  -- Display '8'
        "0010000" WHEN "1001",  -- Display '9'
        "1111111" WHEN OTHERS;  -- Default: Blank display (invalid input)
END ARCHITECTURE arch_seven_segment;