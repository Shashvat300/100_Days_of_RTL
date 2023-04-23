# Johnson Counter:-

A Johnson counter using 4 D flip-flops is a type of digital circuit that can count and generate a sequence of states. It is made up of a series of D flip-flops connected in a ring, similar to a standard Johnson counter.

Here's how a Johnson counter using D flip-flops works:

1. The data input of the first D flip-flop is connected to a logic high (1) or logic low (0) signal, depending on the desired initial state of the   counter

2. The clock input of each D flip-flop is connected to a common clock signal that controls the timing of the counter.

3. The output of each D flip-flop is connected to the input of the next D flip-flop in the ring.

4. The output of the last D flip-flop in the ring is connected back to the data input of the first D flip-flop, completing the ring.

5. Each D flip-flop in the ring is triggered by the complement of the output of the previous flip-flop, similar to the standard Johnson counter.

As the clock signal pulses, the counter advances through a sequence of states, with each state representing a unique combination of the outputs of the D flip-flops. The counter cycles through all possible states before returning to its initial state, making it useful for applications that require a repeating sequence of states.

Johnson counters using D flip-flops are commonly used in digital signal processing, frequency dividers, and other applications where a sequence of states is required. They can also be cascaded to create larger counters with more bits.



# Waveform:-

![image](https://user-images.githubusercontent.com/103407023/233844098-99d2222c-c9fd-42db-8a9f-511fff92b164.png)
