library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ENCODER_TO_DECODER_ is
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
        a  : out STD_LOGIC;
        b  : out STD_LOGIC;
        c  : out STD_LOGIC;
        d  : out STD_LOGIC;
        e  : out STD_LOGIC;
        f  : out STD_LOGIC;
        g  : out STD_LOGIC
    );
end ENCODER_TO_DECODER_;

architecture Behavioral of ENCODER_TO_DECODER_ is

    signal D, C, B, A : STD_LOGIC;

begin

    -- ===== ENCODER =====
    -- D = I8 + I9
    D <= I8 OR I9;

    -- C = I4 + I5 + I6 + I7
    C <= (I4 OR I5) OR (I6 OR I7);

    -- B = I2 + I3 + I6 + I7
    B <= (I2 OR I3) OR (I6 OR I7);

    -- A = I1 + I3 + I5 + I7 + I9
    A <= ((I1 OR I3) OR (I5 OR I7)) OR I9;

    -- ===== DECODER =====
    a <= D OR B OR (C AND A) OR ((NOT C) AND (NOT A));

    b <= ((NOT C) OR D) OR ((NOT B) AND (NOT A)) OR (B AND A);

    c <= ((NOT B) OR A) OR C;

    d <= D OR ((NOT C) AND (NOT A)) OR ((NOT C) AND B) OR ((C AND (NOT B)) AND A);

    e <= (B AND (NOT A)) OR
         ((NOT C) AND (NOT A));

    f <= ((NOT B) AND (NOT A)) OR
         (C AND (NOT B)) OR
         (A AND (NOT C)) OR D;

    g <= (C AND (NOT B)) OR ((NOT C) AND B) OR
         (B AND (NOT A)) OR D;

end Behavioral;