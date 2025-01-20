library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BusDemux_v1_0 is
	generic (
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 32;

		C_M00_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M00_AXIS_START_COUNT	: integer	:= 32;
		
		C_M01_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M01_AXIS_START_COUNT	: integer	:= 32
	);
	port (
		s00_axis_aclk	: in std_logic;
		s00_axis_aresetn	: in std_logic;
		s00_axis_tready	: out std_logic;
		s00_axis_tdata	: in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
		s00_axis_tstrb	: in std_logic_vector((C_S00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast	: in std_logic;
		s00_axis_tvalid	: in std_logic;

		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_aclk	: in std_logic;
		m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tstrb	: out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic;

		-- Ports of Axi Master Bus Interface M01_AXIS
		m01_axis_aclk	: in std_logic;
		m01_axis_aresetn	: in std_logic;
		m01_axis_tvalid	: out std_logic;
		m01_axis_tdata	: out std_logic_vector(C_M01_AXIS_TDATA_WIDTH-1 downto 0);
		m01_axis_tstrb	: out std_logic_vector((C_M01_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m01_axis_tlast	: out std_logic;
		m01_axis_tready	: in std_logic;
		
		m02_axis_aclk	: in std_logic;
		m02_axis_aresetn	: in std_logic;
		m02_axis_tvalid	: out std_logic;
		m02_axis_tdata	: out std_logic_vector(C_M01_AXIS_TDATA_WIDTH-1 downto 0);
		m02_axis_tstrb	: out std_logic_vector((C_M01_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m02_axis_tlast	: out std_logic;
		m02_axis_tready	: in std_logic;
				
		m03_axis_aclk	: in std_logic;
		m03_axis_aresetn	: in std_logic;
		m03_axis_tvalid	: out std_logic;
		m03_axis_tdata	: out std_logic_vector(C_M01_AXIS_TDATA_WIDTH-1 downto 0);
		m03_axis_tstrb	: out std_logic_vector((C_M01_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m03_axis_tlast	: out std_logic;
		m03_axis_tready	: in std_logic;
		
		InputSlc : in std_logic_vector(1 downto 0)
	);
end BusDemux_v1_0;

architecture arch_imp of BusDemux_v1_0 is
begin
	
	m00_axis_tvalid <= s00_axis_tvalid when InputSlc = "00" else '0';
	m01_axis_tvalid <= s00_axis_tvalid when InputSlc = "01" else '0';
	m02_axis_tvalid <= s00_axis_tvalid when InputSlc = "10" else '0';
	m03_axis_tvalid <= s00_axis_tvalid when InputSlc = "11" else '0';
	
	m00_axis_tlast <= s00_axis_tlast when InputSlc = "00" else '0';
	m01_axis_tlast <= s00_axis_tlast when InputSlc = "01" else '0';
	m02_axis_tlast <= s00_axis_tlast when InputSlc = "10" else '0';
	m03_axis_tlast <= s00_axis_tlast when InputSlc = "11" else '0';
	
	m00_axis_tdata <= s00_axis_tdata when InputSlc = "00" else (others => '0');
	m01_axis_tdata <= s00_axis_tdata when InputSlc = "01" else (others => '0');
	m02_axis_tdata <= s00_axis_tdata when InputSlc = "10" else (others => '0');
	m03_axis_tdata <= s00_axis_tdata when InputSlc = "11" else (others => '0');
	
	m00_axis_tstrb <= s00_axis_tstrb when InputSlc = "00" else (others => '0');
	m01_axis_tstrb <= s00_axis_tstrb when InputSlc = "01" else (others => '0');
	m02_axis_tstrb <= s00_axis_tstrb when InputSlc = "10" else (others => '0');
	m03_axis_tstrb <= s00_axis_tstrb when InputSlc = "11" else (others => '0');
	
	s00_axis_tready <= 	m00_axis_tready when InputSlc = "00" else
						m01_axis_tready when InputSlc = "00" else
						m02_axis_tready when InputSlc = "00" else
						m03_axis_tready when InputSlc = "00";
end arch_imp;
