library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BusMux_v1_0 is
	generic (
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M00_AXIS_START_COUNT	: integer	:= 32;
		
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 32;
		
		C_S01_AXIS_TDATA_WIDTH	: integer	:= 32;
		
		C_S02_AXIS_TDATA_WIDTH	: integer	:= 32;
		
		C_S03_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
	
		m00_axis_aclk	: in std_logic;
		m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tstrb	: out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic;

		-- Ports of Axi Slave Bus Interface S00_AXIS
		s00_axis_aclk	: in std_logic;
		s00_axis_aresetn	: in std_logic;
		s00_axis_tready	: out std_logic;
		s00_axis_tdata	: in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
		s00_axis_tstrb	: in std_logic_vector((C_S00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast	: in std_logic;
		s00_axis_tvalid	: in std_logic;

		-- Ports of Axi Slave Bus Interface S01_AXIS
		s01_axis_aclk	: in std_logic;
		s01_axis_aresetn	: in std_logic;
		s01_axis_tready	: out std_logic;
		s01_axis_tdata	: in std_logic_vector(C_S01_AXIS_TDATA_WIDTH-1 downto 0);
		s01_axis_tstrb	: in std_logic_vector((C_S01_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s01_axis_tlast	: in std_logic;
		s01_axis_tvalid	: in std_logic;

		-- Ports of Axi Slave Bus Interface S02_AXIS
		s02_axis_aclk	: in std_logic;
		s02_axis_aresetn	: in std_logic;
		s02_axis_tready	: out std_logic;
		s02_axis_tdata	: in std_logic_vector(C_S02_AXIS_TDATA_WIDTH-1 downto 0);
		s02_axis_tstrb	: in std_logic_vector((C_S02_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s02_axis_tlast	: in std_logic;
		s02_axis_tvalid	: in std_logic;

		-- Ports of Axi Slave Bus Interface S03_AXIS
		s03_axis_aclk	: in std_logic;
		s03_axis_aresetn	: in std_logic;
		s03_axis_tready	: out std_logic;
		s03_axis_tdata	: in std_logic_vector(C_S03_AXIS_TDATA_WIDTH-1 downto 0);
		s03_axis_tstrb	: in std_logic_vector((C_S03_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s03_axis_tlast	: in std_logic;
		s03_axis_tvalid	: in std_logic;
		
		inputSlc : in std_logic_vector(1 downto 0)
	);
end BusMux_v1_0;

architecture arch_imp of BusMux_v1_0 is
	
begin
	
	m00_axis_tvalid <= 	s00_axis_tvalid when InputSlc = "00" else
						s01_axis_tvalid when InputSlc = "01" else
						s02_axis_tvalid when InputSlc = "10" else
						s03_axis_tvalid when InputSlc = "11" ;
						
	m00_axis_tdata <= 	s00_axis_tdata when InputSlc = "00" else
						s01_axis_tdata when InputSlc = "01" else
						s02_axis_tdata when InputSlc = "10" else
						s03_axis_tdata when InputSlc = "11";
	
	m00_axis_tlast <= 	s00_axis_tlast when InputSlc = "00" else
						s01_axis_tlast when InputSlc = "01" else
						s02_axis_tlast when InputSlc = "10" else
						s03_axis_tlast when InputSlc = "11";
						
	m00_axis_tstrb <= 	s00_axis_tstrb when InputSlc = "00" else
						s01_axis_tstrb when InputSlc = "01" else
						s02_axis_tstrb when InputSlc = "10" else
						s03_axis_tstrb when InputSlc = "11";
						
	s00_axis_tready <= m00_axis_tready when InputSlc = "00" else '0';
	s01_axis_tready <= m00_axis_tready when InputSlc = "01" else '0';
	s02_axis_tready <= m00_axis_tready when InputSlc = "10" else '0';
	s03_axis_tready <= m00_axis_tready when InputSlc = "11" else '0';
						
end arch_imp;
