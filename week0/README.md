**week0 Agenda: Build HDP required Lab Setup on Windows 11.**



0.1 System configuration: VSD-HDP Workshop course needs a computer system with, 

1. 100GB HDD/SDD of free hard-disc space.

2. 4GB RAM (Minimum).

3. 1CPU (Minimum) with Virtualization mode ON in BIOS settings.


**0.2 Easy to follow lab setup steps on Windows 11** (if system configuration is met):

1. Download and Install Oracle VirtualBox 5.x / 7.x or later version.

2. Download Virtual Device Image (*.VDI) from link shared by VSD team.
    Link: https://forgefunder.com/~kunal/riscv_workshop.vdi 

    Note: This is 13GB file by name riscv_workshop.vdi, occupies specified or default download folder space.

4. For quick start, open VirtualBox, click on "New", select RAM and select VDI image file to create new / add Virtual Machine as shown in *.PNG files 1 to 3.
    3.1 1_VirtualBox_Create_New.PNG

   ![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/bc153e0d-b5a0-41bd-8f3a-c1d5f9412f65)


    3.2 2_Add_RAM_space.PNG

   ![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/b75e3bd5-8adb-422c-8c81-99c21e33f3b0)


    3.3 3_select_vi_image_to_create_vm.PNG

   ![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/49f52b43-22c3-4944-b3c4-b635ebd129d3)

   3.4 4_linux_VM_on_Windows_OS_after_installation.PNG

   ![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/51c8d114-4f81-4aa4-8965-fe97282cb4e3)



5. Additional steps: to add network adopter and shared folder follow highlights given in image capture 5 and 6.

    4.1 5_Network_adoptor_settings.PNG.

   ![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/3cf6fab1-d0d1-4254-a35d-f95acdc07f8d)


    4.2 6_Add_shared_folder_for_VM_and_windows.PNG

   ![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/fe011849-63e8-492d-bdf3-e48114cd88c4)

For more specific steps to build Remote lab setup on Windows follow instructions document provided in "steps_to_open_VDI.pdf" file. 

**0.3 Build lab setup on Linux:**

For installation of VDI image on Linux, follow last section of the same file or from link below.

Link: https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/blob/main/week0/Steps_to_open_VDI.pdf 

**0.4 installation on iOS** : with M3 chipset, refer https://github.com/riscv-software-src/homebrew-riscv


NOTE:Refer Challenges on installing VDI file section to resolve issues that are not covered in the REAME section
