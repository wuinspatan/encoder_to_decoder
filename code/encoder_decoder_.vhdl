library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ENCODER_TO_DECODER is
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
end ENCODER_TO_DECODER;

architecture Behavioral of ENCODER_TO_DECODER is

    -- renamed signals (fix conflict)
    signal X3, X2, X1, X0 : STD_LOGIC;

begin

    -- ===== ENCODER =====
    X3 <= I8 OR I9;

    X2 <= (I4 OR I5) OR (I6 OR I7);

    X1 <= (I2 OR I3) OR (I6 OR I7);

    X0 <= ((I1 OR I3) OR (I5 OR I7)) OR I9;

    -- ===== DECODER =====
    a <= X3 OR X1 OR (X2 AND X0) OR ((NOT X2) AND (NOT X0));

    b <= ((NOT X2) OR X3) OR ((NOT X1) AND (NOT X0)) OR (X1 AND X0);

    c <= ((NOT X1) OR X0) OR X2;

    d <= X3 OR ((NOT X2) AND (NOT X0)) OR ((NOT X2) AND X1) OR ((X2 AND (NOT X1)) AND X0);

    e <= (X1 AND (NOT X0)) OR
         ((NOT X2) AND (NOT X0));

    f <= ((NOT X1) AND (NOT X0)) OR
         (X2 AND (NOT X1)) OR
         (X0 AND (NOT X2)) OR X3;

    g <= (X2 AND (NOT X1)) OR ((NOT X2) AND X1) OR
         (X1 AND (NOT X0)) OR X3;

end Behavioral;