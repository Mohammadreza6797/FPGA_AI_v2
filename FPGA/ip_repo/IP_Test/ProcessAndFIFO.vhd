----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/03/2024 12:06:42 PM
-- Design Name: 
-- Module Name: ProcessAndFIFO - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ProcessAndFIFO is
    Port ( 
            ClK         : in std_logic;

            InputReady  : in STD_LOGIC;
            NotFull     : out STD_LOGIC;            
            DataIn      : in STD_LOGIC_VECTOR (31 downto 0);
            LastIn      : in std_logic;
            STRBIn      : in std_logic_vector(3 downto 0);

            OutputReady : in STD_LOGIC;
            NotEmpty    : out STD_LOGIC;
            DataOut     : out STD_LOGIC_VECTOR (31 downto 0);
            LastOut     : out std_logic;
            STRBOut     : out std_logic_vector(3 downto 0)
            );
end ProcessAndFIFO;

architecture Behavioral of ProcessAndFIFO is

  type myBuff_t is array (0 to 7) of std_logic_vector(31 downto 0);
  begin
    STRBOut <= (others => '1');
    process(clk)
    variable Wp, Rp, Cnt : integer range 0 to 7 := 0;
    variable myBuff : myBuff_t;
    variable last : std_logic := '0';
    begin
        if rising_edge(clk) then
            if InputReady = '1' and cnt < 7 then
                cnt := cnt + 1;
                mybuff(Wp) := DataIn;
                Wp := Wp + 1;
                if Wp >= 8 then
                    Wp := 0;
                end if; 
                last := LastIn;               
            end if;
            if OutputReady = '1' and cnt > 0 then
                cnt := cnt - 1;
                DataOut <= myBuff(Rp);
                NotEmpty <= '1';
                Rp := Rp + 1;
                if Rp >= 8 then
                    Rp := 0;
                end if;
                if last = '1' and cnt = 0 then
                    last := '0';
                    LastOut <= '1';
                end if;
            else
                NotEmpty <= '0';
                LastOut <= '0';
            end if; 
            if cnt < 7 then
                NotFull <= '1';
            else
                NotFull <= '0';
            end if;
        end if;
    end process;
  
end Behavioral;


