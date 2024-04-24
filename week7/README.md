# POST-SYNTHESIS and SIMULATION 

Post-synthesis and RTL simulation is next target to achieve and close this training program.

The verification of the complete verilog files with instruction memory makes a whole lot to simulate.

So the plan is to consider dividing the complete single solution into multiple individual modules for post synthesis.

As a first step, instructions to be bypassed in testbench.v file.

--------------------------------------------------------------------------------------------------------------------------------------

** 1.UART BYPASSING: ** 

in this step, the uart based verification is handled by bypassing or by commenting the instructions in testbench.v file.

Note: the block type (multiple lines) comment in the testbench_IO_updated.v file for all instructions.

      uart_rx_en = 1'b1;
     /*  @(posedge slow_clk);write_instruction(32'h00000000); 
         @(posedge slow_clk);write_instruction(32'h00000000); 
         @(posedge slow_clk);write_instruction(32'hff010113); 
         @(posedge slow_clk);write_instruction(32'h00112623); 
         @(posedge slow_clk);write_instruction(32'h00812423); 
         @(posedge slow_clk);write_instruction(32'h00912223); 
         @(posedge slow_clk);write_instruction(32'h00000e13); 
         @(posedge slow_clk);write_instruction(32'h00100493); 
         @(posedge slow_clk);write_instruction(32'h00000713); 
         @(posedge slow_clk);write_instruction(32'h00011337); 
         @(posedge slow_clk);write_instruction(32'h00011fb7); 
         @(posedge slow_clk);write_instruction(32'h00100613); 
         @(posedge slow_clk);write_instruction(32'h00200e93); 
         @(posedge slow_clk);write_instruction(32'h03200513); 
         @(posedge slow_clk);write_instruction(32'h00300393); 
         @(posedge slow_clk);write_instruction(32'h00400093); 
         @(posedge slow_clk);write_instruction(32'hf0000293); 
         @(posedge slow_clk);write_instruction(32'h0ff00413); 
         @(posedge slow_clk);write_instruction(32'h00170713); 
         @(posedge slow_clk);write_instruction(32'h100f7693); 
         @(posedge slow_clk);write_instruction(32'h0086d693); 
         @(posedge slow_clk);write_instruction(32'h200f7793); 
         @(posedge slow_clk);write_instruction(32'h0097d793); 
         @(posedge slow_clk);write_instruction(32'h80d1a623); 
         @(posedge slow_clk);write_instruction(32'h80f1a423); 
         @(posedge slow_clk);write_instruction(32'h06c68a63); 
         @(posedge slow_clk);write_instruction(32'h00c78e63); 
         @(posedge slow_clk);write_instruction(32'h02a70063); 
         @(posedge slow_clk);write_instruction(32'hff670793); 
         @(posedge slow_clk);write_instruction(32'h00f037b3); 
         @(posedge slow_clk);write_instruction(32'h40f007b3); 
         @(posedge slow_clk);write_instruction(32'h00f5f5b3); 
         @(posedge slow_clk);write_instruction(32'hfc9ff06f); 
         @(posedge slow_clk);write_instruction(32'h21d32c23); 
         @(posedge slow_clk);write_instruction(32'hfea714e3); 
         @(posedge slow_clk);write_instruction(32'hfa059ee3); 
         @(posedge slow_clk);write_instruction(32'h21832783); 
         @(posedge slow_clk);write_instruction(32'hfa078ae3); 
         @(posedge slow_clk);write_instruction(32'h214fa683); 
         @(posedge slow_clk);write_instruction(32'h06c68063); 
         @(posedge slow_clk);write_instruction(32'h09d68c63); 
         @(posedge slow_clk);write_instruction(32'h0c768263); 
         @(posedge slow_clk);write_instruction(32'h00000713); 
         @(posedge slow_clk);write_instruction(32'h00100593); 
         @(posedge slow_clk);write_instruction(32'hf8169ce3); 
         @(posedge slow_clk);write_instruction(32'h401e5e13); 
         @(posedge slow_clk);write_instruction(32'h005f7f33); 
         @(posedge slow_clk);write_instruction(32'h01cf6f33); 
         @(posedge slow_clk);write_instruction(32'h02c78463); 
         @(posedge slow_clk);write_instruction(32'h020e1663); 
         @(posedge slow_clk);write_instruction(32'h207faa23); 
         @(posedge slow_clk);write_instruction(32'h00000713); 
         @(posedge slow_clk);write_instruction(32'h00100593); 
         @(posedge slow_clk);write_instruction(32'hf75ff06f); 
         @(posedge slow_clk);write_instruction(32'h20c32c23); 
         @(posedge slow_clk);write_instruction(32'hf8c798e3); 
         @(posedge slow_clk);write_instruction(32'h20032c23); 
         @(posedge slow_clk);write_instruction(32'hf89ff06f); 
         @(posedge slow_clk);write_instruction(32'h20cfaa23); 
         @(posedge slow_clk);write_instruction(32'hfc0e0ee3); 
         @(posedge slow_clk);write_instruction(32'h00000713); 
         @(posedge slow_clk);write_instruction(32'h00100593); 
         @(posedge slow_clk);write_instruction(32'hf51ff06f); 
         @(posedge slow_clk);write_instruction(32'h001e1e13); 
         @(posedge slow_clk);write_instruction(32'h0ffe7e13); 
         @(posedge slow_clk);write_instruction(32'h005f7f33); 
         @(posedge slow_clk);write_instruction(32'h01cf6f33); 
         @(posedge slow_clk);write_instruction(32'h01d78c63); 
         @(posedge slow_clk);write_instruction(32'h000e1e63); 
         @(posedge slow_clk);write_instruction(32'h21dfaa23); 
         @(posedge slow_clk);write_instruction(32'h00068593); 
         @(posedge slow_clk);write_instruction(32'h00000713); 
         @(posedge slow_clk);write_instruction(32'hf29ff06f); 
         @(posedge slow_clk);write_instruction(32'h201faa23); 
         @(posedge slow_clk);write_instruction(32'hfe0e06e3); 
         @(posedge slow_clk);write_instruction(32'h00000713); 
         @(posedge slow_clk);write_instruction(32'h00068593); 
         @(posedge slow_clk);write_instruction(32'hf15ff06f); 
         @(posedge slow_clk);write_instruction(32'h04c78c63); 
         @(posedge slow_clk);write_instruction(32'h001e1e13); 
         @(posedge slow_clk);write_instruction(32'h001e6e13); 
         @(posedge slow_clk);write_instruction(32'h005f7f33); 
         @(posedge slow_clk);write_instruction(32'h01cf6f33); 
         @(posedge slow_clk);write_instruction(32'h01d79463); 
         @(posedge slow_clk);write_instruction(32'h207faa23); 
         @(posedge slow_clk);write_instruction(32'h00000713); 
         @(posedge slow_clk);write_instruction(32'h00100593); 
         @(posedge slow_clk);write_instruction(32'hee8e16e3); 
         @(posedge slow_clk);write_instruction(32'h20cfaa23); 
         @(posedge slow_clk);write_instruction(32'hee5ff06f); 
         @(posedge slow_clk);write_instruction(32'h02c78c63); 
         @(posedge slow_clk);write_instruction(32'h401e5e13); 
         @(posedge slow_clk);write_instruction(32'h080e6e13); 
         @(posedge slow_clk);write_instruction(32'h005f7f33); 
         @(posedge slow_clk);write_instruction(32'h01cf6f33); 
         @(posedge slow_clk);write_instruction(32'h00000713); 
         @(posedge slow_clk);write_instruction(32'h00100593); 
         @(posedge slow_clk);write_instruction(32'hec8e12e3); 
         @(posedge slow_clk);write_instruction(32'h201faa23); 
         @(posedge slow_clk);write_instruction(32'hebdff06f); 
         @(posedge slow_clk);write_instruction(32'hfac496e3); 
         @(posedge slow_clk);write_instruction(32'h00100e13); 
         @(posedge slow_clk);write_instruction(32'h00000493); 
         @(posedge slow_clk);write_instruction(32'hfa9ff06f); 
         @(posedge slow_clk);write_instruction(32'h21dfaa23); 
         @(posedge slow_clk);write_instruction(32'hfd9ff06f); 
         @(posedge slow_clk);write_instruction(32'hffffffff); 
         @(posedge slow_clk);write_instruction(32'hffffffff);  */
     
          $display("Test Results:");
          $display("    PASSES: %d", passes);
          $display("    FAILS : %d", fails);
         #100000
         $display("Finish simulation at time %d", $time);
         $finish;

------------------------------------------------------------------------------------------------------------------
    Now if we run the vvp command for UART verification, the process gets completed in very few (1-2) seconds.

    $iverilog -o trainDir_UartBypassd_v 1_2_testbench_IoUpdtd_UartBypssd.v 1_1_processor_IoUpdtd_NoChangs.v

    --> NOTE: this command prompts a output file trainDir_UartBypassd_v

    $vvp trainDir_UartBypassd_v

    --> NOTE: this command prompts the simulation time as in screenshot below

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/3f02711f-ab50-4a7c-97af-cf470a9f5b47)

----------------------------------------------------------------------------------------------------------------------------------------

# VERILOG RTL SYNTHESIS and GATE-LEVEL (RTL) SIMULATIONS USING YOSYS FRAMEWORK:
---------------------------------------------------------------------------------

In this section we shall cover 

1. First installing the YOSYS packages required for RTL Synthesis and RTL Simulation.

2. Preparing verilog files for Synthesis.

3. Gate-Level (RTL) Simulation.

---------------------------------------------------------------------------------------

**1. YOSYS Installation**

Install Yosys packages from link below in the vsdworkshop VM.

Link: https://github.com/YosysHQ/yosys 

or

Install the latest YOSYS version by utilizing following commands in the VM Linux terminal:

$ sudo apt install build-essential clang bison flex libreadline-dev \
    gawk tcl-dev libffi-dev git graphviz \
    xdot pkg-config python python3 libftdi-dev \
    qt5-default python3-dev libboost-all-dev cmake libeigen3-dev

$ Clone yosys repository

$ git clone https://github.com/YosysHQ/yosys yosys --depth 1

$ cd yosys

$ git fetch --unshallow

To build Yosys, run 'make' in yosys directory.

$ make -j$(nproc)

$ sudo make install

--------------------------------------------------------------------------------------------------------------------------------------

