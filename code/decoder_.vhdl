library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder is
    Port (
        X3 : in  STD_LOGIC; 
        X2 : in  STD_LOGIC; 
        X1 : in  STD_LOGIC; 
        X0 : in  STD_LOGIC; 

        a : out STD_LOGIC;
        b : out STD_LOGIC;
        c : out STD_LOGIC;
        d : out STD_LOGIC;
        e : out STD_LOGIC;
        f : out STD_LOGIC;
        g : out STD_LOGIC
    );
end decoder;

architecture Behavioral of decoder is
begin

    -- a
    a <= X3 OR X1 OR (X2 AND X0) OR ((NOT X2) AND (NOT X0));

    -- b
    b <= (NOT X2) OR X3 OR ((NOT X1) AND (NOT X0)) OR (X1 AND X0);

    -- c
    c <= (NOT X1) OR X0 OR X2;

    -- d
    d <= X3 OR ((NOT X2) AND (NOT X0)) OR ((NOT X0) AND X1) OR
         ((NOT X2) AND X1) OR
         ((X0 AND (NOT X1)) AND X2);

    -- e
    e <= (X1 AND (NOT X0)) OR
         ((NOT X2) AND (NOT X0));

    -- f
    f <= ((NOT X1) AND (NOT X0)) OR
         (X2 AND (NOT X1)) OR
         (X2 AND (NOT X0)) OR X3;


end Behavioral;