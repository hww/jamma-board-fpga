library ieee, std;
use std.textio.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity stimulus is
  port(
      aMem		: in std_logic_vector(15 downto 0);
      dMem		: in std_logic_vector(7 downto 0);
      clk		: out std_logic;
      nReset		: out std_logic;
      nHsync		: out std_logic;
      nVsync		: out std_logic;
      ega		: out std_logic;
      iVideo		: out std_logic;
      oVideo		: in std_logic;
      csync		: in std_logic;
      relay		: in std_logic;
      nCs		: in std_logic;
      nOe		: in std_logic;
      nWe		: in std_logic
      );
end stimulus;

architecture GeneratedCode of stimulus is
begin

clk_process : process
  variable tb_stop_time : time := 2.20117e+007 ns;
  variable clk_Offset : time := 0 ns;
  variable clk_Period : time := 40 ns;
  variable clk_MinLH : time := 0 ns;
  variable clk_MaxLH : time := 0 ns;
  variable clk_MinHL : time := 0 ns;
  variable clk_MaxHL : time := 0 ns;
  variable clk_JRise : time := 0 ns;
  variable clk_JFall : time := 0 ns;
  variable clk_Duty : time := 50 ns;
  variable clk_high : time;
  variable clk_low : time;
begin 
  clk_high := clk_Period * (clk_Duty / ns) / 100;
  clk_low := clk_Period - clk_high;
  clk <= '0';
  wait for clk_Offset + (clk_MinLH - clk_JRise/2);
  while (now < tb_stop_time) loop
    clk <= '1';
    wait for (clk_high - (clk_MaxLH + clk_JRise/2) + (clk_MinHL - clk_JFall/2));
    clk <= '0';
    wait for (clk_low - (clk_MaxHL + clk_JFall/2) + (clk_MinLH - clk_JRise/2));
  end loop;
end process;

nHsync_process : process
  variable tb_stop_time : time := 2.20117e+007 ns;
  variable nHsync_Offset : time := 100 ns;
  variable nHsync_Period : time := 32000 ns;
  variable nHsync_MinLH : time := 0 ns;
  variable nHsync_MaxLH : time := 0 ns;
  variable nHsync_MinHL : time := 0 ns;
  variable nHsync_MaxHL : time := 0 ns;
  variable nHsync_JRise : time := 0 ns;
  variable nHsync_JFall : time := 0 ns;
  variable nHsync_Duty : time := 1 ns;
  variable nHsync_high : time;
  variable nHsync_low : time;
begin 
  nHsync_low := nHsync_Period * (nHsync_Duty / 1 ns) / 100;
  nHsync_high := nHsync_Period - nHsync_low;
  nHsync <= '1';
  wait for nHsync_Offset + (nHsync_MinHL - nHsync_JFall/2);
  while (now < tb_stop_time) loop
    nHsync <= '0';
    wait for (nHsync_low - (nHsync_MaxHL + nHsync_JFall/2) + (nHsync_MinLH - nHsync_JRise/2));
    nHsync <= '1';
    wait for (nHsync_high - (nHsync_MaxLH + nHsync_JRise/2) + (nHsync_MinHL - nHsync_JFall/2));
  end loop;
end process;

nVsync_process : process
  variable tb_stop_time : time := 2.20117e+007 ns;
  variable nVsync_Offset : time := 0 ns;
  variable nVsync_Period : time := 1.66667e+007 ns;
  variable nVsync_MinLH : time := 0 ns;
  variable nVsync_MaxLH : time := 0 ns;
  variable nVsync_MinHL : time := 0 ns;
  variable nVsync_MaxHL : time := 0 ns;
  variable nVsync_JRise : time := 0 ns;
  variable nVsync_JFall : time := 0 ns;
  variable nVsync_Duty : time := 1 ns;
  variable nVsync_high : time;
  variable nVsync_low : time;
begin 
  nVsync_low := nVsync_Period * (nVsync_Duty / 1 ns) / 100;
  nVsync_high := nVsync_Period - nVsync_low;
  nVsync <= '1';
  wait for nVsync_Offset + (nVsync_MinHL - nVsync_JFall/2);
  while (now < tb_stop_time) loop
    nVsync <= '0';
    wait for (nVsync_low - (nVsync_MaxHL + nVsync_JFall/2) + (nVsync_MinLH - nVsync_JRise/2));
    nVsync <= '1';
    wait for (nVsync_high - (nVsync_MaxLH + nVsync_JRise/2) + (nVsync_MinHL - nVsync_JFall/2));
  end loop;
end process;

  process
  begin
    nReset <=
      transport '1',
                '1' after 19.561 ns,
                '0' after 19.562 ns;
    ega <=
      transport '0';
    iVideo <=
      transport 'X';
    wait;
  end process;

end GeneratedCode;

--Top Level Test Bench Module
  -- Contains an instance of the Stimulus Module and an instance of the Product Module
library ieee,std;
use std.textio.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.all;

entity testbench is
  end testbench;

architecture tbGeneratedCode of testbench is
   -- Component declaration for the stimulus module
   component stimulus
    port(
      aMem		: in std_logic_vector(15 downto 0);
      dMem		: in std_logic_vector(7 downto 0);
      clk		: out std_logic;
      nReset		: out std_logic;
      nHsync		: out std_logic;
      nVsync		: out std_logic;
      ega		: out std_logic;
      iVideo		: out std_logic;
      oVideo		: in std_logic;
      csync		: in std_logic;
      relay		: in std_logic;
      nCs		: in std_logic;
      nOe		: in std_logic;
      nWe		: in std_logic
        );
   end component;

   -- Component declaration for the product module
   component scanconv
    port(
      aMem	 : out	 [] wire;
      dMem	 : out	 [] wire;
      clk	 : in	 wire;
      nReset	 : in	 wire;
      nHsync	 : in	 wire;
      nVsync	 : in	 wire;
      ega	 : in	 wire;
      iVideo	 : in	 wire;
      oVideo	 : out	 wire;
      csync	 : out	 wire;
      relay	 : out	 wire;
      nCs	 : out	 wire;
      nOe	 : out	 wire;
      nWe	 : out	 wire
        );
   end component;
   -- Signal Declarations for the test bench module
   signal		aMem			: std_logic_vector(15 downto 0);
   signal		dMem			: std_logic_vector(7 downto 0);
   signal		clk			: std_logic;
   signal		nReset			: std_logic;
   signal		nHsync			: std_logic;
   signal		nVsync			: std_logic;
   signal		ega			: std_logic;
   signal		iVideo			: std_logic;
   signal		oVideo			: std_logic;
   signal		csync			: std_logic;
   signal		relay			: std_logic;
   signal		nCs			: std_logic;
   signal		nOe			: std_logic;
   signal		nWe			: std_logic;

   -- Ports are connected by matching the port names of the Test Module
   begin
     stimulus_0: stimulus
       port map(
                  aMem,
                  dMem,
                  clk,
                  nReset,
                  nHsync,
                  nVsync,
                  ega,
                  iVideo,
                  oVideo,
                  csync,
                  relay,
                  nCs,
                  nOe,
                  nWe
                    );
    scanconv_0 : scanconv
      port map(
                  aMem => aMem,
                  dMem => dMem,
                  clk => clk,
                  nReset => nReset,
                  nHsync => nHsync,
                  nVsync => nVsync,
                  ega => ega,
                  iVideo => iVideo,
                  oVideo => oVideo,
                  csync => csync,
                  relay => relay,
                  nCs => nCs,
                  nOe => nOe,
                  nWe => nWe
                  );
end tbGeneratedCode;
