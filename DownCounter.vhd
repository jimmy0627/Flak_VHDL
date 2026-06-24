library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY DownCounter is
	 generic (
        FREQ_HZ : integer := 1  -- Default frequency is 1Hz, can be overridden in instantiation
    );
    port (
        clk   : IN std_logic;
        reset : IN std_logic;
        index : OUT std_logic
    );
END ENTITY DownCounter;

architecture DownCounterScript OF DownCounter is
    SIGNAL div_cnt : integer range 0 to 50000000 := 0; 
    SIGNAL twoHZ   : std_logic := '0';
	 constant TARGET_COUNT : integer := (50000000 / (2 * FREQ_HZ)) - 1;
begin
    process(clk, reset)
    begin
        if (reset = '0') then
            div_cnt <= 0;
            twoHZ   <= '0';
        elsif falling_edge(clk) then 
            if (div_cnt = TARGET_COUNT) then 
                div_cnt <= 0;
                twoHZ   <= not twoHZ; -- Target count reached, flip signal
            else
                div_cnt <= div_cnt + 1;
            end if;
        end if;
    end process;
    
    index <= twoHZ;
end DownCounterScript;