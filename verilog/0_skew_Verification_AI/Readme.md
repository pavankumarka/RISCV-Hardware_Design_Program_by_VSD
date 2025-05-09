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

![image](https://github.com/user-attachments/assets/3ee4674f-859c-4f9c-b9af-1e53d3e8b363)
