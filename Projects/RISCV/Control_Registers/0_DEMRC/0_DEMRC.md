# DEMRC 

1. Introduction:

To work with the DEMCR (Debug Exception and Monitor Control Register) in RISC-V 32-bit, we typically interact with the registers through the system’s memory-mapped I/O or by using special instructions if the debug extension is supported. In general, RISC-V does not have direct access to DEMCR in regular user-level programs without specific support for debug features.

2. How and why to access DEMRC?
   
That said, if the debug extension is supported, accessing DEMCR would typically involve reading and writing specific registers. The DEMCR is often handled by low-level code, usually in the context of an operating system or a debug monitor.

3. Project Agenda: How to read "Hello World, DEMRC is enabled" from RISC-V debug port? 
