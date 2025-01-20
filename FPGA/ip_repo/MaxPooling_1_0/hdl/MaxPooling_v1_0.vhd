library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MaxPooling_v1_0 is
	generic (
		
		C_Master_TDATA_WIDTH	: integer	:= 32;
		C_Master_START_COUNT	: integer	:= 32;
		C_Slave_TDATA_WIDTH	: integer	:= 32
	);
	port (
		master_aclk	: in std_logic;
		master_aresetn	: in std_logic;
		master_tvalid	: out std_logic;
		master_tdata	: out std_logic_vector(C_Master_TDATA_WIDTH-1 downto 0);
		master_tstrb	: out std_logic_vector((C_Master_TDATA_WIDTH/8)-1 downto 0);
		master_tlast	: out std_logic;
		master_tready	: in std_logic;

		-- Ports of Axi Slave Bus Interface Slave
		slave_aclk	: in std_logic;
		slave_aresetn	: in std_logic;
		slave_tready	: out std_logic;
		slave_tdata	: in std_logic_vector(C_Slave_TDATA_WIDTH-1 downto 0);
		slave_tstrb	: in std_logic_vector((C_Slave_TDATA_WIDTH/8)-1 downto 0);
		slave_tlast	: in std_logic;
		slave_tvalid	: in std_logic
	);
end MaxPooling_v1_0;

architecture arch_imp of MaxPooling_v1_0 is
    type DataArray_t is array(0 to 15) of std_logic_vector(31 downto 0);
    signal DataArray : DataArray_t := (others => (others => '0'));
    signal OutputReady, OutputDone : std_logic := '0';
begin
    MaxPollingProcess : process(master_aclk)
    variable datacnt, remindCnt : integer := 0;
    variable state : integer range 0 to 1 := 0;
    variable V_Data : DataArray_t := (others => (others => '0'));
    variable V_ready : std_logic := '0';
    begin
        if rising_edge(master_aclk) then
            case state is
            when 0 =>
                V_ready := '1';
                if slave_tvalid = '1' then
                    remindCnt := DataCnt mod 16;
                    if slave_tData > V_Data(remindCnt) then
                        V_Data(remindCnt) := slave_tData;
                        dataCnt := dataCnt + 1;
                        if dataCnt >= 64 then 
                            state := 1;
                            dataCnt := 0;
                            V_ready := '0';
                            DataArray <= V_Data;
                        else
                            state := 0;
                        end if;
                    end if;
                end if;
            when 1 =>
                if OutputDone = '1' then
                    DataArray <= (others =>(others => '0'));
                    state := 0;
                    OutputReady <= '0';
                else
                    state := 1;
                    OutputReady <= '1';
                end if;
            when others =>
                state := 0;
            end case;
            Slave_tready <= V_ready;
        end if;
    end process MaxPollingProcess;
    
    
    OutputProcess : process(master_aclk)
    variable Cnt, state : integer range 0 to 16 := 0;
    
    begin
        if rising_edge(master_aclk) then
            case state is
            when 0 =>
                if OutputReady = '1' then
                    Cnt := 0;
                    state := 1;
                end if;
            when 1 =>
                Master_tData <= DataArray(Cnt);
                Master_tValid <= '1';
                if master_tready = '1' then
                    Cnt := Cnt + 1;
                    if Cnt >= 16 then
                        master_tlast <= '1';
                        state := 2;
                        Cnt := 0;
                    end if;
                end if;
            when 2 =>
                Master_tValid <= '0';
                master_tlast <= '0';
                if OutputReady = '0' then
                    OutputDone <= '0';
                    state := 0;
                else
                    outputDone <= '1';
                    state := 2;
               end if; 
            when others => 
                state := 0;                                       
            end case; 
        end if;
    end process OutputProcess;
end arch_imp;
