----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/17/2025 03:36:49 PM
-- Design Name: 
-- Module Name: Conv2_calculator - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Conv2_calculator is
    Port ( clk : in STD_LOGIC;
           Pixel :  in STD_LOGIC_VECTOR (31 downto 0);
           W :      in STD_LOGIC_VECTOR (31 downto 0);
           Bias :   in STD_LOGIC_VECTOR (31 downto 0);
           LastData : in STD_LOGIC_VECTOR (31 downto 0);
           result : out STD_LOGIC_VECTOR (31 downto 0));
end Conv2_calculator;

architecture Behavioral of Conv2_calculator is
    signal     P1, P2, P3, L, B          : std_logic_vector(47 downto 0); 
    signal     sum                        : std_logic_vector(47 downto 0);
    signal     D_part1, D_part2, D_part3  : std_logic_vector(7 downto 0);
    signal     W1, W2, W3                 : std_logic_vector(17 downto 0);
begin
    process(clk)       
    begin
        if rising_edge(clk) then            
            D_part1 <= Pixel(7 downto 0);
            D_part2 <= Pixel(15 downto 8);
            D_part3 <= Pixel(23 downto 16);            
            W1 <= x"00" & W(9 downto 0); 
            W2 <= x"00" & W(19 downto 10);
            W3 <= x"00" & W(29 downto 20);
            L   <= x"0000" & LastData;
            B   <= x"0000" & Bias; 
            P1  <= std_logic_vector(resize(unsigned(D_part1) * unsigned(W1), 48));
            P2  <= std_logic_vector(resize(unsigned(D_part2) * unsigned(W2), 48));
            P3  <= std_logic_vector(resize(unsigned(D_part3) * unsigned(W3), 48));       
            sum <= (std_logic_vector(unsigned(P1) + unsigned(P2) + unsigned(P3) + unsigned(L) + unsigned(B)));
            result <= sum(31 downto 0);
        end if;
    end process;
end Behavioral;
