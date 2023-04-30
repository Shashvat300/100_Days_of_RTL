# Waveform:-

![image](https://user-images.githubusercontent.com/103407023/235343423-7c04b9f3-131b-4602-a6ea-4c63d59b717a.png)

# Serial In Parallel Out (SIPO) Shift Register:-

A Serial In Parallel Out (SIPO) shift register is a digital circuit that can shift data bits in a serial manner, and then output them in parallel. In other words, it can take a stream of data bits, one by one, and store them temporarily before outputting them simultaneously in parallel.

The basic construction of a SIPO shift register consists of a chain of flip-flops connected in series, with the output of each flip-flop connected to the input of the next. The data input is connected to the first flip-flop, and the output of the last flip-flop is the parallel output.

To shift data into the register, a clock signal is applied to the shift register. On each clock pulse, the data bit at the input is shifted into the first flip-flop, and the existing bits in the register are shifted one position to the right.

Once all the bits have been shifted in, the register will contain all the bits in parallel. At this point, the parallel output can be read or used to control other circuits.

SIPO shift registers are used in a variety of digital applications, such as data storage, serial-to-parallel conversion, and digital signal processing.
