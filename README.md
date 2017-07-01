# DittoCloneLooper
The goal of this project is to achieve a digital looper device that can record and playback 5 minutes of guitar input at 24 bits. The sampling rate must be 44kHz and one must be able to record over previous loops. Only one master loop will be held.
This equates to the equation:

Number of Memory Bits = 24 bits/sample * 44,000 samples/second * 60 seconds/minute * 5 minutes.

~~The appropriate memory size we have chosen for this task is 512 Mb and is listed in the BOM. Currently no ECC has been chosen, but this may change in the future. 


As integration of the volatile memory is currently the most pressing unknown, an FPGA development board (Basys2) will be implemented to simulate its function. The source files to communicate with the SPI interface of the memory are listed in fpga_test. For the communication test, the FPGA will implement three functions.

Function 1:
The Arduino will feed the FPGA a single 8-bit number over SPI. This number will then be shown on the seven segment display on the development board. This will test the Arduino's capability of writing over the SPI bus.

Function 2:
The Arduino will read a series of values from the FPGA logic-implemented memory.This will be matched against the expected string of values, and if correct, a green LED will be turned on.

Function 3:
The Arduino will clear the FPGA memory cells over SPI and then write a series of values into the FPGA memory. It will then read the values one by one and, if correct, a green LED will be turned on.
~~

This repository will hold the Arduino source code, ~~EAGLE Schematic and Board, BOM, and FPGA test source~~ for the DittoClone Looper Project.

Only thing needed is integration of the ADC on breadboard.
