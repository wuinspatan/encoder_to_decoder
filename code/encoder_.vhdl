library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder is
    Port (
        I1 : in  STD_LOGIC;
        I2 : in  STD_LOGIC;
        I3 : in  STD_LOGIC;
        I4 : in  STD_LOGIC;
        I5 : in  STD_LOGIC;
        I6 : in  STD_LOGIC;
        I7 : in  STD_LOGIC;
        I8 : in  STD_LOGIC;
        I9 : in  STD_LOGIC;
        D  : out STD_LOGIC;
        C  : out STD_LOGIC;
        B  : out STD_LOGIC;
        A  : out STD_LOGIC
    );
end encoder;

architecture Behavioral of encoder is

begin

    -- D = I8 + I9
    D <= I8 OR I9;

    -- C = I4 + I5 + I6 + I7
    C <= (I4 OR I5) OR (I6 OR I7);

    -- B = I2 + I3 + I6 + I7
    B <= (I2 OR I3) OR (I6 OR I7);

    -- A = I1 + I3 + I5 + I7 + I9
    A <= ((I1 OR I3) OR (I5 OR I7)) OR I9;

end Behavioral;