# POST-SYNTHESIS and SIMULATION 

Post-synthesis and RTL simulation is next target to achieve and close this training program.

The verification of the complete verilog files with instruction memory makes a whole lot to simulate.

So the plan is to consider dividing the complete single solution into multiple individual modules for post synthesis.

As a first step, instructions to be bypassed in testbench.v file.

--------------------------------------------------------------------------------------------------------------------------------------

In json file, as we have set ASIC = false, meaning the processor.v and testbench.v files generated using chipcron tool (via server at IP: 16.16.221.16) were for FGPA based simulation.

In processor.v files, for FPGA based simulation, we assume the instruction memory is already filled by making writing_inst_done = 1 in procssor.v file. 

In processor.v file UART module "uart_inst" sends the data to sky130's "inst_mem" module.

For complete chip verification, we ensure 2 things,

1. UART is writing instructions correctly. this we ensure by checking expected vs received bits are same, using command

    $ iverilog -o train_v testbench.v processor.v
    $vvt trainDir_v ,with instructions enabled in testbench.v file.

Note: the output shall be something like below matching expected / received.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/c27fc629-ec69-442b-893d-4181bec5d3c4)

2. processor.v is working correctly. For this we will comment the instructions in testbench.v file i.e bypassing UART and setting writing_inst_done = 1 in processor.v file, when reset is triggered.

Then run the iVerilog and vvp commands, the execution runs quick (less than few MBs) an we should be able to view the simulation.

Note: Following above apporach we can simulate the output quick and also verify the modules.

This way uart module is working and top module (processor) is working, instruction memory and data memory is also working. 
For the application we developed in "C", all verilog modules are working.

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

Simulation commmand opens the gtkwave window quick as the *.vcd file is of small size, expecting outputs_pins varying here might be difficult.

$gtkwave waveform.vcd 

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/e8b91b0e-cd88-4089-a4f1-5eac3f75d379)

Eg2: When the input pattern is given more time and changes in input pattern, the simulation is fast but compiling the waveform.vc file takes time (Eg: 900000).

$iverilog -o trainDirInputVars_v 1_2_testbench_IO_Updated_uartBypsd_InputsVars.v 1_1_processor_IO_upated_NoChanges.v

$vvp trainDirInputVars_v

$gtkwave waveform.vsd

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/3a95fe85-beff-4928-91b0-bece8bd43799)

----------------------------------------------------------------------------------------------------------------------------------------

# VERILOG RTL SYNTHESIS USING YOSYS FRAMEWORK and GATE-LEVEL (RTL) SIMULATIONS:
---------------------------------------------------------------------------------

In this section we shall cover,

1. First installing the YOSYS packages required for RTL Synthesis.

2. Preparing verilog files for Synthesis to generate NetList for functional Verification.

3. Gate-Level (RTL) Simulation.

-----------------------------------------------------------------------------------------------------------------------------------

** Introduction to Yosys: **

Yosys is a Verilog RTL synthesis framework to perform logic synthesis, elaboration, and converting a subset of the Verilog Hardware Description Language (HDL) into a (BLIF) netlist.

Yosys can be adapted to perform any synthesis job by combining the existing passes (algorithms) using synthesis scripts and adding additional passes as needed by extending the yosys C++ code base.

Github link: https://github.com/YosysHQ/yosys

**1. YOSYS Installation**

Install Yosys packages from link below in the vsdworkshop VM.

Link: https://github.com/YosysHQ/yosys 

1. Install the latest YOSYS version by utilizing following commands in the VM Linux terminal: (use apt, apt-get, aptitude)

$ sudo aptitude -y install build-essential clang bison flex libreadline-dev \
    gawk tcl-dev libffi-dev git graphviz \
    xdot pkg-config python python3 libftdi-dev \
    qt5-default python3-dev libboost-all-dev cmake libeigen3-dev

2. To Clone yosys repository

$ git clone https://github.com/YosysHQ/yosys yosys --depth 1

$ cd yosys

$ git fetch --unshallow

3. To build Yosys, run 'make' in yosys directory.

$ make -j$(nproc)

$ sudo make install

$ make test

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/9d2959b4-1089-4647-ac5c-38ef1ad024ed)

--------------------------------------------------------------------------------------------------------------------------------------

Converting the behavioral model into RTL model for processor.v.

The 2_1_processor_IoUpdtd_SynthChanges_asicType.v file has following blocks,
1. wrapper module has
   1 test or state machile controls UART functionality.
   2 top module is processor.
   3 uart_inst is used for connecting the outside world.

Synthesis required Changes: 

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/a789757d-ad45-491c-a66b-343d5d8463f4)

All above modules are converted into RTL language or series of transistors (AND , OR, XOR gate representation) written into a file, which can be understood by silicon foundaries. This new generated file is called GDSII file (which details how each Nodes are connected within Silicon area).

----------------------------------------------------------------------------------------------------------------------------------------
Synthesis can be performed when the coding model is in RTL model type and it is not possible for behavioral models. 

2. To prepare RTL model synthesis, there are certain changes to be made for processor.v, which was initially generated for behavioral 
   model using chipcron tool.

   ** Note:
       1. processor.v is downloaded from chipcron tool,
       2. 8_1_processor_IO_Updated.v or 1_1_processor_IO_Updated_noChanges.v has IO updates for processor.v file

2.1 In 8_1_processor_IO_Updated.v or 1_1_processor_IO_Updated_noChanges.v file has instruction writing_inst_done = 1 is updated to writing_inst_done = 0, to make ** processor as ASIC type** in file 2_1_processor_IoUpdtd_SynthChanges_asicType.v, and to perform RTL synthesis. In the following section functional verification is covered for the 2_1_processor_IoUpdtd_SynthChanges_asicType.v.
 
 2.3 Simulation for behavioral models has instruction memory and data memory in 2_1_processor_IoUpdtd_SynthChanges_asicType.v file. 
     The behavioral models are represented as:
     1. sky130_sram_2kbyte_1rw1r_32x256_8_inst 
     and 
     2. sky130_sram_2kbyte_1rw1r_32x256_8_data 
  
 2.4 We need seperate models for instruction memory and data memory while designing behavioral model. But the goal is to overcome behavioral model type verification and simulation and to meet certain functional verification and simulation tasks like:
     2.4.1. Preloading the application image into the instruction memory for functional verification and 
     2.4.2. Bypassing the instruction-set step of loading program instruction in memory via UART during the functional simulation.

To further routing to perform RTL Synthesis, we need to perform following steps:
     
 2.5 Comment the module definitions of both sky130_sram_2kbyte_1rw1r_32x256_8_inst and sky130_sram_2kbyte_1rw1r_32x256_8_data for RTL verification and Synthesis in 2_1_processor_IoUpdtd_SynthChanges_asicType.v file.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4f24e9f4-32d2-4dff-b435-9c7c497dfd89)

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/c2d8b353-fd6b-4d55-8c12-49ec62c7da8c)

Intermin result: error obtained if in case we run iverilog command as below
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/e1a4f770-866b-4a47-93e0-3009b00b0f5e)

 2.6 To use the Foundry provided black box memory modules and as the IOT CPU does not require 2k RAM (as that will be huge size), the instantiated SRAM modules to be renamed from sky130_sram_2kbyte_1rw1r_32x256_8_data and sky130_sram_2kbyte_1rw1r_32x256_8_inst to **sky130_sram_1kbyte_1rw1r_32x256_8** . This way both data and instruction memory are represented as single memory in file 2_1_processor_IoUpdtd_SynthChanges_asicType.v file.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/64b79757-4042-41d4-afba-f6405d5c6d87)






--------------------------------------------------------------------------------------------------------------------------------------



 
