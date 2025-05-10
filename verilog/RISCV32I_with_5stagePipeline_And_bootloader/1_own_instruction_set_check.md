A complete example of:

    A C firmware program (RV32I-compliant, 20–30 lines).

    How to compile it into a .mem file.

    A Verilog testbench that loads the instruction memory and simulates execution.

-------------------------------------------------------------------------------------

✅ Step 2: Compile and Generate .mem File

🔧 Toolchain Required: riscv32-unknown-elf-gcc

    # 1. Compile to ELF (no standard libs, RV32I)
    riscv64-unknown-elf-gcc -nostdlib -march=rv32i -mabi=ilp32 -Ttext=0x0000 -o firmware.elf firmware.c
    
    # 2. Convert ELF → binary → hex
    riscv64-unknown-elf-objcopy -O binary firmware.elf firmware.bin
    
    # 3. Generate word-aligned hex (.mem file)
    xxd -p -c 4 firmware.bin > program.mem

This gives you program.mem like:

11410093
11410113
...


-------------------------------------------------------------------------------------
iverilog -o sim riscv_core.v instruction_memory.v tb_riscv_core.v
vvp sim
gtkwave riscv_wave.vcd

-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
