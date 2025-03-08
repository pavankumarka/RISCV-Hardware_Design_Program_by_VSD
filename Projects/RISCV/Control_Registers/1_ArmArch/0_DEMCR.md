# DEMCR:

The DEMCR (Debug Exception and Monitor Control Register) is not an instruction but rather a memory-mapped register in the 
ARM Cortex-M architecture. It is used to control debug-related features, such as enabling the Debug Monitor exception, enabling tracing, 
and controlling vector catch behavior. Since it is a register, it is accessed using load/store instructions in the ARM instruction set.

DEMCR in ARM Cortex-M

Address: 0xE000EDFC

Purpose: Controls debug and monitor behavior in the processor.

Access: Accessed via memory-mapped I/O using load (LDR) and store (STR) instructions.

# Accessing DEMCR in ARM Assembly

To read from or write to the DEMCR register, you use load/store instructions. Here’s how it works:

1. Reading DEMCR (Load Instruction):

asm

    LDR R0, =0xE000EDFC  ; Load the address of DEMCR into R0
    LDR R1, [R0]         ; Load the value of DEMCR into R1

2. Writing to DEMCR (Store Instruction):

asm

    LDR R0, =0xE000EDFC  ; Load the address of DEMCR into R0
    MOV R1, #0x00010000  ; Set the MON_EN bit (bit 16) in R1
    STR R1, [R0]         ; Store the value in R1 into DEMCR
    DEMCR in C/C++

# Accessing DEMCR using C language.

In C/C++, you can access DEMCR using a pointer to its memory-mapped address. For example:

C Code

      #define DEMCR (*((volatile uint32_t*) 0xE000EDFC))
      
      int main() {
          // Enable the Debug Monitor exception
          DEMCR |= (1 << 16); // Set the MON_EN bit (bit 16)
      
          // Read the current value of DEMCR
          uint32_t demcr_value = DEMCR;
      
          return 0;
      }
      
# Key Bits in DEMCR

Here are some important bits in the DEMCR register:

Bit	Name	Description
    16	MON_EN	Enables the Debug Monitor exception.
    18	VC_HARDERR	Enables vector catch for HardFault exceptions.
    19	VC_INTERR	Enables vector catch for interrupt/exception service routine errors.
    20	VC_BUSERR	Enables vector catch for bus faults.
    21	VC_STATERR	Enables vector catch for usage faults, memory management faults, etc.
    24	TRCENA	Enables tracing and profiling features (e.g., DWT, ITM, ETM).

Summary

DEMCR is a memory-mapped register, not an instruction.

It is accessed using load/store instructions in assembly or through pointers in C/C++.

It is part of the ARM Cortex-M debug architecture and is used to control debug and monitor features.

If you're working with RISC-V, note that the ARM-specific DEMCR register does not exist in RISC-V. Instead, RISC-V has its own debug and trace mechanisms, typically defined in the RISC-V Debug Specification.

