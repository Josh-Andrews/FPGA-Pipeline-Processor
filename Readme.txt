# ECE473-Final-Project
- VGA-DEMO.bdf is the schematic file.
- I'm Using the Terasic DE0-CV development board with Quartus Prime Lite 17.0.
- Switch 9 is reset, (will not reset datamemory).
- Switch 8 and 7 are used to select the clock signal:

          SW8  SW9    CLOCK
           0    0     KEY[0]
           0    1     1Hz
           1    0     10Hz
           1    1     1kHz

- The switches could probably use debounce, shifting clock while running on board can cause count to jump randomly.
- Editing charengine.v allows editing labels used with the VGA display.
- LEDs are labeled as follows (refer to schematic for more info):

          LED     FUNC
           5      Branch
           4      jal
           3      Ram Data Selected
           2      write enable
           1      Ram write enable
           0      Not Used
           
- Test sof's are located in output_files folder

## MILESTONE 1

Complete

## MILESTONE 2

Complete

## MILESTONE 3

Complete
Used milestone 4 to do sum_array_sof, may work if you remove datamem output registers

## MILESTONE 4

- Two successful test cases in Milestone 4 required (single person):
	- Required(2) = 1,2 both work correctly
	- Bonus Tests = 7,6,3
	- I get full credit and extra points!
- I seem to be having a problem with jr, possibly jump too.
	- I seem to have jr fixed (for the most part) right now.
	- Will need to confirm with other test cases.
- Also having issues with writing to datamemory when not supposed to and stack stuff


- [x] Test 1 (Zero-Array)
	- Works Great!
	- Still works great after jr fixes.
- [x] Test 2 (Multiply)
	- Works Great!
- [x] Test 3 (Sort Data)
	- Works Great!
	- No more datamemory issues
- [ ] Test 4 (Binary Search)
	- Having Issues
- [ ] Test 5 (Palindrome)
	- Having Issues
- [x] Test 6 (Prime)
	- Works Great!
	- It was an issue with jr before.  added more logic to fix that.
- [x] Test 7 (GCD)
	- Works Great!
- [ ] Test 8 (polynomial)
	- Having Issues
	- Seems to work fine until jr $ra
	- I'm writing to datamem for some reason????	
- [ ] Test 9 (Fibonacci)
	- Haven't Tested
