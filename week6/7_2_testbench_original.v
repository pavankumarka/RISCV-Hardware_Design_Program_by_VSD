/* this file renamed from testbench.v to 7_2_testbench_original.v downloaded from chipcron server or utility */

// 
// Module: tb
// 
// Notes:
// - Top level simulation testbench.
//

//`timescale 1ns/1ns
//`define WAVES_FILE "./work/waves-rx.vcd"

module tb();
    
reg        clk          ; // Top level system clock input.
reg rst;
reg neg_clk; 
reg neg_rst ; 
reg        resetn       ;
reg        uart_rxd     ; // UART Recieve pin.

reg        uart_rx_en   ; // Recieve enable
//wire [8:0] res;
wire       uart_rx_break; // Did we get a BREAK message?
wire       uart_rx_valid; // Valid data recieved and available.
wire [7:0] uart_rx_data ; // The recieved data.
wire [31:0] inst ; 
wire [31:0] inst_mem ; 

reg rst_pin ; 
wire write_done ; 


// Bit rate of the UART line we are testing.
localparam BIT_RATE = 9600;
localparam BIT_P    = (1000000000/BIT_RATE);


// Period and frequency of the system clock.
localparam CLK_HZ   = 50000000;
localparam CLK_P    = 1000000000/ CLK_HZ;

reg slow_clk = 0;


// Make the clock tick.
always begin #(CLK_P/2) clk  = ~clk; end   
always begin #(CLK_P/2) neg_clk  = ~neg_clk; end     
always begin #(CLK_P*2) slow_clk <= !slow_clk;end



task write_instruction;
    input [31:0] instruction;
    begin
            @(posedge clk);
            send_byte(instruction[7:0]);
            check_byte(instruction[7:0]);
            @(posedge clk);
            send_byte(instruction[15:8]);
            check_byte(instruction[15:8]);
            
            @(posedge clk);
            send_byte(instruction[23:16]);
            check_byte(instruction[23:16]);
            
            @(posedge clk);
            send_byte(instruction[31:24]);
            check_byte(instruction[31:24]);
    end
    endtask

task send_byte;
    input [7:0] to_send;
    integer i;
    begin


        #BIT_P;  uart_rxd = 1'b0;
        for(i=0; i < 8; i = i+1) begin
            #BIT_P;  uart_rxd = to_send[i];
        end
        #BIT_P;  uart_rxd = 1'b1;
        #1000;
    end
endtask


// Checks that the output of the UART is the value we expect.
integer passes = 0;
integer fails  = 0;
task check_byte;
    input [7:0] expected_value;
    begin
        if(uart_rx_data == expected_value) begin
            passes = passes + 1;
            $display("%d/%d/%d [PASS] Expected %b and got %b", 
                     passes,fails,passes+fails,
                     expected_value, uart_rx_data);
        end else begin
            fails  = fails  + 1;
            $display("%d/%d/%d [FAIL] Expected %b and got %b", 
                     passes,fails,passes+fails,
                     expected_value, uart_rx_data);
        end
    end
endtask


initial 
begin 
    $dumpfile("waveform.vcd");
    $dumpvars(0,tb);
end 

reg [3:0] input_wires; 
wire [3:0] output_wires ; 
wire [2:0] pc ; 


reg [7:0] to_send;
initial begin
    rst=1;
    rst_pin=1; 
    neg_rst = 1; 
    resetn  = 1'b0;
    clk     = 1'b0;
    neg_clk = 1; 
    neg_rst = ~clk ;
    uart_rxd = 1'b1;
    neg_clk = 1'b1; 
    input_wires = 4'b0111;
    #4000
    resetn = 1'b1;
    rst=0;
    neg_rst = 0; 
    rst_pin = 0 ; 
  

    uart_rx_en = 1'b1;
    @(posedge slow_clk);write_instruction(32'h00000000); 
    @(posedge slow_clk);write_instruction(32'h00000000); 
    @(posedge slow_clk);write_instruction(32'hff010113); 
    @(posedge slow_clk);write_instruction(32'h00112623); 
    @(posedge slow_clk);write_instruction(32'h00812423); 
    @(posedge slow_clk);write_instruction(32'h00912223); 
    @(posedge slow_clk);write_instruction(32'h00000e13); 
    @(posedge slow_clk);write_instruction(32'h00100493); 
    @(posedge slow_clk);write_instruction(32'h00000713); 
    @(posedge slow_clk);write_instruction(32'h00011337); 
    @(posedge slow_clk);write_instruction(32'h00011fb7); 
    @(posedge slow_clk);write_instruction(32'h00100613); 
    @(posedge slow_clk);write_instruction(32'h00200e93); 
    @(posedge slow_clk);write_instruction(32'h03200513); 
    @(posedge slow_clk);write_instruction(32'h00300393); 
    @(posedge slow_clk);write_instruction(32'h00400093); 
    @(posedge slow_clk);write_instruction(32'hf0000293); 
    @(posedge slow_clk);write_instruction(32'h0ff00413); 
    @(posedge slow_clk);write_instruction(32'h00170713); 
    @(posedge slow_clk);write_instruction(32'h100f7693); 
    @(posedge slow_clk);write_instruction(32'h0086d693); 
    @(posedge slow_clk);write_instruction(32'h200f7793); 
    @(posedge slow_clk);write_instruction(32'h0097d793); 
    @(posedge slow_clk);write_instruction(32'h80d1a623); 
    @(posedge slow_clk);write_instruction(32'h80f1a423); 
    @(posedge slow_clk);write_instruction(32'h06c68a63); 
    @(posedge slow_clk);write_instruction(32'h00c78e63); 
    @(posedge slow_clk);write_instruction(32'h02a70063); 
    @(posedge slow_clk);write_instruction(32'hff670793); 
    @(posedge slow_clk);write_instruction(32'h00f037b3); 
    @(posedge slow_clk);write_instruction(32'h40f007b3); 
    @(posedge slow_clk);write_instruction(32'h00f5f5b3); 
    @(posedge slow_clk);write_instruction(32'hfc9ff06f); 
    @(posedge slow_clk);write_instruction(32'h21d32c23); 
    @(posedge slow_clk);write_instruction(32'hfea714e3); 
    @(posedge slow_clk);write_instruction(32'hfa059ee3); 
    @(posedge slow_clk);write_instruction(32'h21832783); 
    @(posedge slow_clk);write_instruction(32'hfa078ae3); 
    @(posedge slow_clk);write_instruction(32'h214fa683); 
    @(posedge slow_clk);write_instruction(32'h06c68063); 
    @(posedge slow_clk);write_instruction(32'h09d68c63); 
    @(posedge slow_clk);write_instruction(32'h0c768263); 
    @(posedge slow_clk);write_instruction(32'h00000713); 
    @(posedge slow_clk);write_instruction(32'h00100593); 
    @(posedge slow_clk);write_instruction(32'hf8169ce3); 
    @(posedge slow_clk);write_instruction(32'h401e5e13); 
    @(posedge slow_clk);write_instruction(32'h005f7f33); 
    @(posedge slow_clk);write_instruction(32'h01cf6f33); 
    @(posedge slow_clk);write_instruction(32'h02c78463); 
    @(posedge slow_clk);write_instruction(32'h020e1663); 
    @(posedge slow_clk);write_instruction(32'h207faa23); 
    @(posedge slow_clk);write_instruction(32'h00000713); 
    @(posedge slow_clk);write_instruction(32'h00100593); 
    @(posedge slow_clk);write_instruction(32'hf75ff06f); 
    @(posedge slow_clk);write_instruction(32'h20c32c23); 
    @(posedge slow_clk);write_instruction(32'hf8c798e3); 
    @(posedge slow_clk);write_instruction(32'h20032c23); 
    @(posedge slow_clk);write_instruction(32'hf89ff06f); 
    @(posedge slow_clk);write_instruction(32'h20cfaa23); 
    @(posedge slow_clk);write_instruction(32'hfc0e0ee3); 
    @(posedge slow_clk);write_instruction(32'h00000713); 
    @(posedge slow_clk);write_instruction(32'h00100593); 
    @(posedge slow_clk);write_instruction(32'hf51ff06f); 
    @(posedge slow_clk);write_instruction(32'h001e1e13); 
    @(posedge slow_clk);write_instruction(32'h0ffe7e13); 
    @(posedge slow_clk);write_instruction(32'h005f7f33); 
    @(posedge slow_clk);write_instruction(32'h01cf6f33); 
    @(posedge slow_clk);write_instruction(32'h01d78c63); 
    @(posedge slow_clk);write_instruction(32'h000e1e63); 
    @(posedge slow_clk);write_instruction(32'h21dfaa23); 
    @(posedge slow_clk);write_instruction(32'h00068593); 
    @(posedge slow_clk);write_instruction(32'h00000713); 
    @(posedge slow_clk);write_instruction(32'hf29ff06f); 
    @(posedge slow_clk);write_instruction(32'h201faa23); 
    @(posedge slow_clk);write_instruction(32'hfe0e06e3); 
    @(posedge slow_clk);write_instruction(32'h00000713); 
    @(posedge slow_clk);write_instruction(32'h00068593); 
    @(posedge slow_clk);write_instruction(32'hf15ff06f); 
    @(posedge slow_clk);write_instruction(32'h04c78c63); 
    @(posedge slow_clk);write_instruction(32'h001e1e13); 
    @(posedge slow_clk);write_instruction(32'h001e6e13); 
    @(posedge slow_clk);write_instruction(32'h005f7f33); 
    @(posedge slow_clk);write_instruction(32'h01cf6f33); 
    @(posedge slow_clk);write_instruction(32'h01d79463); 
    @(posedge slow_clk);write_instruction(32'h207faa23); 
    @(posedge slow_clk);write_instruction(32'h00000713); 
    @(posedge slow_clk);write_instruction(32'h00100593); 
    @(posedge slow_clk);write_instruction(32'hee8e16e3); 
    @(posedge slow_clk);write_instruction(32'h20cfaa23); 
    @(posedge slow_clk);write_instruction(32'hee5ff06f); 
    @(posedge slow_clk);write_instruction(32'h02c78c63); 
    @(posedge slow_clk);write_instruction(32'h401e5e13); 
    @(posedge slow_clk);write_instruction(32'h080e6e13); 
    @(posedge slow_clk);write_instruction(32'h005f7f33); 
    @(posedge slow_clk);write_instruction(32'h01cf6f33); 
    @(posedge slow_clk);write_instruction(32'h00000713); 
    @(posedge slow_clk);write_instruction(32'h00100593); 
    @(posedge slow_clk);write_instruction(32'hec8e12e3); 
    @(posedge slow_clk);write_instruction(32'h201faa23); 
    @(posedge slow_clk);write_instruction(32'hebdff06f); 
    @(posedge slow_clk);write_instruction(32'hfac496e3); 
    @(posedge slow_clk);write_instruction(32'h00100e13); 
    @(posedge slow_clk);write_instruction(32'h00000493); 
    @(posedge slow_clk);write_instruction(32'hfa9ff06f); 
    @(posedge slow_clk);write_instruction(32'h21dfaa23); 
    @(posedge slow_clk);write_instruction(32'hfd9ff06f); 
    @(posedge slow_clk);write_instruction(32'hffffffff); 
    @(posedge slow_clk);write_instruction(32'hffffffff); 

     $display("Test Results:");
     $display("    PASSES: %d", passes);
     $display("    FAILS : %d", fails);
    #100000
    $display("Finish simulation at time %d", $time);
    $finish;
end

 wrapper dut (
.clk        (clk          ), // Top level system clock input.
.resetn       (resetn       ), // Asynchronous active low reset.
.uart_rxd     (uart_rxd     ), // UART Recieve pin.
.uart_rx_en   (uart_rx_en   ), // Recieve enable
.uart_rx_break(uart_rx_break), // Did we get a BREAK message?
.uart_rx_valid(uart_rx_valid), // Valid data recieved and available.
.uart_rx_data (uart_rx_data ), 
.input_gpio_pins(input_wires), 
.output_gpio_pins(output_wires), 
.write_done(write_done)
); 



endmodule
