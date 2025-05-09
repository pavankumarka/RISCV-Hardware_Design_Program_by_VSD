What is Clock Skew?

    Clock skew is the difference in arrival time of a clock signal at different parts of a circuit.

    It can be intentional (for timing optimization) or unintentional (due to routing delays).

    Resolution techniques include using clock buffers, clock trees, or timing constraints during synthesis/PnR.

Clock skew is a timing issue that arises in synchronous circuits when a clock signal arrives at different components at slightly different times. Verilog doesn’t inherently model clock skew unless delays are introduced manually. To simulate clock skew and demonstrate skew resolution techniques (like using clock delay or phase alignment), you can model a testbench and a simple sequential design.

Here's a complete example to introduce skew and demonstrate how to resolve it in Verilog:
refer dff_sync.v tb_dff_sync.v

Clock Skew voilation demo using verilog, tb and GTK_wave diagrams.
        $ iverilog dff_sync.v tb_dff_sync.v -o dff_skew
        $ vvp dff_skew
        $gtkwave gtk_dff_skew_sim.vcd

# skew introduction: 

1. skew introduction

        in tb_dff_sync.v line 17, change the line as below
        #3 clk_skewed = clk_main;    // skew_introduction by 3ns

![image](https://github.com/user-attachments/assets/3ee4674f-859c-4f9c-b9af-1e53d3e8b363)

# skew resolution

2. Skew Resolution (Optional Advanced)

        You can resolve skew by:
        
        Adding delay compensation circuits (e.g., delay buffers).
        
        Using Phase-Locked Loops (PLLs) (not usually modeled at RTL).
        
        Adjusting clock tree synthesis in synthesis tools.
        
        in tb_dff_sync.v line 17, change the line as below
        #0 clk_skewed = clk_main;    // skew_resolution

![image](https://github.com/user-attachments/assets/9b7143e9-9af1-4b7c-bacb-770b23b0d588)

3. Explanation

        clk_main is the main clock.
        
        clk_skewed is delayed by 3ns, simulating positive clock skew.
        
        Two flip-flops capture the same data using different clock versions.
        
        The output q_main and q_skewed may capture different values due to skew — a visual difference visible in waveform simulation.

4. Waveform Diagram

        In this simulation:
        
        clk_main: The primary clock signal.
        
        clk_skewed: A delayed version of clk_main, introducing a 3ns clock skew.
        
        q_main and q_skewed: Outputs from two D flip-flops driven by clk_main and clk_skewed, respectively.
        
        The waveform will show:
        
        clk_main and clk_skewed having a 3ns difference.
        
        q_main and q_skewed potentially capturing different values due to the skew.

5. summary:

        Clock skew refers to the difference in arrival times of the clock signal at different flip-flops. It can be:
        
        Positive Skew: When the clock arrives later at the capture flip-flop, potentially causing hold violations.
        
        Negative Skew: When the clock arrives earlier at the capture flip-flop, potentially causing setup violations.

In the provided simulation, the 3ns delay introduces a positive skew between clk_main and clk_skewed, which can lead to timing issues if not properly managed.

