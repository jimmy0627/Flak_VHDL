Library ieee;
use IEEE.STD_Logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

-- Module Generates Video Sync Signals for Video Montor Interface
-- RGB and Sync outputs tie directly to monitor conector pins
ENTITY VGA_sync IS   
	PORT(
		  CLOCK,RESET: IN std_logic;
		  horiz_sync,vert_sync,video_on: OUT std_logic;
        row_count:out INTEGER RANGE 0 TO 524;		
        col_count:out INTEGER RANGE 0 TO 799	);
END VGA_sync ;

ARCHITECTURE arch OF VGA_sync IS
SIGNAL h_count: INTEGER RANGE 0 TO 799;	
SIGNAL v_count: INTEGER RANGE 0 TO 524;		
	
BEGIN

-- Generate Horizontal and Vertical Counts
	PROCESS(CLOCK,RESET)   
	BEGIN				  						
     IF RESET = '0' THEN  
			h_count <= 0;
			v_count <= 0;
     ELSIF CLOCK'EVENT AND CLOCK='1' THEN 
         IF h_count = 799 then h_count<=0; 
			-- Increment vertical counter when horizontal scan completes a row
              if v_count = 524 then
                 v_count <= 0;
              else
                 v_count <= v_count + 1;
              end if;
			ELSE h_count <= h_count + 1;
			END IF;
     END IF;
	END PROCESS;
	 
--  Horiz_sync  ------------------------------------__________--------
--  h_count     0                 639              660      755      799
--	
  PROCESS (h_count)  
    BEGIN
		IF h_count >=660 and h_count<=755 THEN horiz_sync <= '0';
		ELSE  horiz_sync <= '1';
		END IF;  	
  END PROCESS;

--  Vert_sync   ----------------------------------_______------------
--  v_count     0                 479            493   494         524
--
   PROCESS (v_count)  
 	BEGIN
		IF (v_count >= 493 AND v_count <=494) THEN vert_sync <= '0';
		ELSE vert_sync <= '1';
		END IF;  	
	END PROCESS; 

-- Generate Video on Screen Signals for Pixel Data
-- Video on = 1 indicates pixel are being displayed
	video_on <= '1' when (h_count < 640 and v_count < 480) else '0';
	
	row_count <= v_count;
	col_count <= h_count;

END arch;

