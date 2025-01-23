LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

PACKAGE seven_segment_pkg IS
    COMPONENT seven_segment
        PORT (
            a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);  -- 4-bit input (number to display)
            f : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)  -- 7-segment output (corresponding segment values)
        );
    END COMPONENT;
END PACKAGE seven_segment_pkg;
