----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2024 08:04:12 PM
-- Design Name: 
-- Module Name: conv2_Handler - Behavioral
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

entity conv2_Handler is
    Port ( clk : in STD_LOGIC;
           M_Ready : 	in STD_LOGIC;
           M_Data : 	out STD_LOGIC_VECTOR (31 downto 0);
           M_Valid : 	out STD_LOGIC;
           M_STRB : 	out STD_LOGIC_VECTOR (3 downto 0);
           M_Last : 	out STD_LOGIC;
           S_Data : 	in STD_LOGIC_VECTOR (31 downto 0);
           S_Valid : 	in STD_LOGIC;
           S_STRB : 	in STD_LOGIC_VECTOR (3 downto 0);
           S_Last : 	in STD_LOGIC;
           S_Ready : 	out STD_LOGIC;
           
           WeightData : in std_logic_vector(31 downto 0);
           WeightValid : in std_logic;
           WeightReady : out std_logic; 
           WeightLast : in std_logic;
		   weightCnt :  in std_logic_vector(31 downto 0)	
			
			--Debug signal
--			SwitchKernel : in std_logic_vector(3 downto 0);
--			SwitchWeight  : in std_logic_vector(3 downto 0);
--		   	WeightOut1 : out std_logic_vector(31 downto 0);		   	
--		   	Stateout : out std_logic_vector(3 downto 0);
--		   	DataOut : out std_logic_vector(31 downto 0);
--		   	SwitchData : in std_logic_vector(3 downto 0);
--		   	KernelOut :	out std_logic_vector(31 downto 0);
--		   	DataCntOut : out std_logic_vector(3 downto 0);
--		   	WeightOut : out std_logic_vector(31 downto 0)
		   	
           );
end conv2_Handler;

architecture Behavioral of conv2_Handler is
    type Weight_t is array(0 to 9) of std_logic_vector(31 downto 0);
    type Weight_2D_t is array(0 to 15) of Weight_t;
    type State_t is (idle, weightupdating, newData, wait3clk, WaitForOut);
    type KernelArray_t is array(0 to 15) of std_logic_vector(31 downto 0);
    signal WeightArray: Weight_2D_t := (others=>(others=>(others => '0')));
    signal CurrentWeight :  KernelArray_t := (others=>(others => '0'));
    signal CurrentBias :    KernelArray_t := (others=>(others => '0'));
    signal CurrentData :    std_logic_vector(31 downto 0) := (others => '0');
    signal LastData :       KernelArray_t := (others=>(others => '0'));
    signal Result :         KernelArray_t := (others=>(others => '0'));
    signal KernelArray :    KernelArray_t := (others =>(others=> '0'));
    signal OutReady, OutDone, LastRec : std_logic := '0';
    signal WeightUpdated_Flag, WeightUpdateAllow: std_logic := '0';
    
    signal WeightSwitch : integer range 0 to 15 := 0;
    component Calculator is
    Port (
            clk       : in  std_logic;
            Pixel     : in  std_logic_vector(31 downto 0); 
            W         : in  std_logic_vector(31 downto 0);
            LastData  : in  std_logic_vector(31 downto 0);
            Bias      : in  std_logic_vector(31 downto 0);         
            result    : out std_logic_vector(31 downto 0)  
        );
    end component Calculator;
begin
    gen_instance : for i in 0 to 15 generate    
        CalIns : Calculator
        port map (
                clk => clk,
                pixel => CurrentData,
                W => CurrentWeight(i),
                LastData => LastData(i),
                Bias => CurrentBias(i),
                Result => Result(i)
              );
    end generate;
    InputDataProcess :process(clk)
    variable state : state_t := Idle;
    variable cntWeight, cntData, KernelCnt : integer := 0;
    variable ResultData : std_logic_vector(31 downto 0) := (others=>'0');
    variable stateNum : integer := 0;
    variable weightupfatCnt : integer := 0;
    variable dataCnt,WaitCnt : integer := 0;
    begin
    if rising_edge(clk) then
        case state is
        when idle => 
        	StateNum := 0;
            if S_Valid = '0' and WeightUpdated_Flag = '1' then
            	state := weightupdating;
            elsif S_Valid = '1' then
            	state := newData;
            end if;
        when weightupdating =>
        	StateNum := 1;
        	if  WeightUpdateAllow = '0' then
        		state := weightupdating;
        		WeightUpdateAllow <= '1';
        	else 
        		weightupfatCnt := weightupfatCnt + 1;
        		if weightupfatCnt >= 2 then
         			state := idle;
         			WeightUpdateAllow <= '0';
         			weightupfatCnt := 0;
         		end if;
         	end if;
       	when newData =>       		
       		StateNum := 2;
       		if S_Valid = '1' then       			
       	        state := wait3clk;       			
       		    S_Ready <= '1';
       		    CurrentData <= S_Data;       		    
       	        lastRec <= S_Last;
       		    for i in 0 to 15 loop
       		       CurrentWeight(i) <= WeightArray(i)(cntData);
       		   end loop;
       		   if cntData = 8 then
       		       for i in 0 to 15 loop
       		           CurrentBias(i) <= WeightArray(i)(9);
       			  end loop;
       		   else
       			      CurrentBias <= (others =>(others => '0'));
       		   end if;       		
       		   LastData <= KernelArray;
       		else
       			state := newData;
       	        S_Ready <= '0';
       		end if;
       	when wait3clk =>
       		StateNum := 4;
       		S_Ready <= '0';
       		WaitCnt := WaitCnt + 1;
       		if waitCnt >= 3 then
       	        WaitCnt := 0;
       	        KernelArray <= Result;
--       	        KernelOut <=  Result(0);
       	        cntData := cntData + 1; 
                if cntData >= 9 then
                    cntData := 0;
       				state := WaitForOut;
                else                   
       				state := newData;
       			end if;      			
       		end if;
       	when WaitForOut =>
       	    StateNum := 5;
       	    if OutDone = '0' then
       	        OutReady <= '1';
       	        state := WaitForOut;
       	    else
       	        OutReady <= '0';
       	        KernelArray <= (others =>(others => '0'));
       	        state := Idle;
       	    end if;       	   
       	when others =>
       		state := Idle;
        end case;        
--    	StateOut <= std_logic_vector(TO_UNSIGNED(stateNum, 4));
--    	DataCntOut <= std_logic_vector(TO_UNSIGNED(cntData, 4));
    end if;
    end process InputDataProcess;  
    
    OutputDataProcess : process(clk)
    variable state, cnt : integer := 0;
    begin
        if rising_edge(clk) then
        case state is
        when 0 =>
            if OutReady = '1' then
               outDone <= '0';
               state := 1;
            else
                M_Valid <= '0';
                state := 0;
            end if;
        when 1 =>
            M_Valid <= '1';
            M_Data <= KernelArray(cnt);
            if M_ready = '1' then
                cnt := cnt + 1;
                if cnt >= 16 then 
                    M_Last <= lastRec;
                    OutDone <= '1';
                    cnt := 0;
                    state := 2;
                else
                    M_Last <= '0';
                    state := 1;
                end if;
            end if;
        when 2 =>
            M_Valid <= '0';
            M_Last <= '0';
            if OutReady = '0' then
                OutDone <= '0';                
                state := 0;
            else
                OutDone <= '1';
                state := 2;
            end if;
        when others =>
            cnt := 0;
            state := 0;     
        end case;
        end if;
    end process OutputDataProcess;
    
    WeightUpdate : process(clk)
    variable wcnt, state, KernelNum : integer := 0;
    variable WeightUpdated : Weight_t := (others=>(others=> '0'));
    begin
       	if rising_edge(clk) then
       	    wcnt := TO_INTEGER(UNSIGNED(weightCnt)); 
    		case state is
    		when 0 =>    			   		
    			WeightReady <= '0';
    			if WeightValid = '1' then
    				state := 1;
    			else
    				state := 0;
    			end if;
    		when 1 =>
    			WeightReady <= '1';    		
    			if  wcnt = 0 then
    				KernelNum := TO_INTEGER(unsigned(WeightData));
    			else 
    				WeightUpdated(wcnt - 1) := WeightData;
    			end if;    			
    			if WeightLast = '1' then
    				state := 2;
    				WeightReady <= '0';
    			else
    				state := 1;
    				WeightReady <= '1';
    			end if;
    		when 2 =>
    			WeightUpdated_Flag <= '1';
    			if WeightUpdateAllow = '1' then
    				WeightArray(kernelNum) <= WeightUpdated;
    				WeightUpdated_Flag <= '0';
    				state := 0;
    			else
    				WeightUpdated_Flag <= '1';
    				state := 2;
    			end if;
    		when others =>
    			   state := 0;    			  
    		end case;		
    	end if;
    end process WeightUpdate;
--    DataOut <= CurrentData;
--    WeightSwitch <= TO_INTEGER(unsigned(switchData));
--    WeightOut <= WeightArray(0)(WeightSwitch);
    
end Behavioral;
