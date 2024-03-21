--------------------------------------------------------------------
PROJECT WORK
--------------------------------------------------------------------

IDEAS GATHERING SESSION:

1. STIGNOGRAPHY - using an AUDIO and/or a PICTURE file.
      current status: C-code is ready. uses pointers, files read/write operations.
   
2. DNS RESOLUTION - built using Data Structure's HEAP, pointers and file read, HASH-Table, and other linked list concepts. 
      current status: C-code is ready.

3. LED TRAIN and/or DIMMER: Circular LED TRAIN with/without Dimmer concept.   
      current status: C code for PIC MC is ready for both, need to check feasibility to combine both.

4. TLS Server on RISC-V: Uses Random Number generator, AES-Symmetric Keys, Encryption and Decrytion related Cryptography concepts.
      Current status: Feasibility study yet to be made.

5. Soundbox and earphone for blinds: Needs "Natural Language Processing", Amplifier concepts, and a speaker for output.
      Current status: need to check feasibility study and explore if laptop mic can be used to hear and speakers/ earphone to direct the walking path with aid of offline maps.


IMPORTANCE:
1. STIGNOGRAPHY: hide secret messages in audio or image files.
2. DNS RESOLUTION: Can be used in networking projects
3. LED TRAIN and/or DIMMER: Can be used in Sign boards
4. TLS Server on RISC-V: Can be used in securing data / networking projects
5. SOUNDBOX and earphone for blinds: Can be used by visually challenged people for obstacle detection and routing the correct path.

Project story board: 

Story1. Stignography with TLS Server with LED dimmer and Soundbox: The client sends a file, that has encrypted secret message inbuild in a image or audio file. It is read at Stignograph server side to obtain encrypted msg from audio or image file and then use TLS server for decryption to obtain original message. If the file is corrupted when file is read at server side, we can run the LED dimmer train in pattern X and if the secret msg is obtained without any error, LED dimmer train can be run in pattern Y and a soundbox can be used to announce the secret message.
   
   Future work: The encryted msg at the server side can be further redirected to proxy server, but it's IP has to be resolved first using DNS server logic and then ask proxy server to perform decryption to obtain original secret message.

Decision making conditions: 
1. Due to limited time (3weeks) and resource ( 16hrs/week), we need to first cut-short the project story for 48hrs delivery time.
2. The scope of the HDP workshop is to understand the tools and its usage rather than focusing towards pushing towards productizing or build concepts.
3. As we are not aware of code part of few modules, and then the supporting features of the tools in the RISCV HDP program, we will focus on reduced project scope at first and then enhance later when required based on time availability.
