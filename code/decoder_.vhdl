library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_ is
    Port (
        D : in  STD_LOGIC;
        C : in  STD_LOGIC;
        B : in  STD_LOGIC;
        A : in  STD_LOGIC;
        a : out STD_LOGIC;
        b : out STD_LOGIC;
        c : out STD_LOGIC;
        d : out STD_LOGIC;
        e : out STD_LOGIC;
        f : out STD_LOGIC;
        g : out STD_LOGIC
    );
end decoder_;

architecture Behavioral of decoder_ is
begin

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
