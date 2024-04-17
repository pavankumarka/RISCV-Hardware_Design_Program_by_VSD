

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

reg [9:8] input_wires; 
wire [7:0] output_wires ; 
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
    input_wires = 2'b01;
    #400000
    input_wires = 2'b10;
    #400000
    input_wires = 2'b01;
    #400000
    resetn = 1'b1;
    rst=0;
    neg_rst = 0; 
    rst_pin = 0 ; 
  

    uart_rx_en = 1'b1;
    @(posedge slow_clk);write_instruction(32'h00000000); 
    @(posedge slow_clk);write_instruction(32'h00000000); 
    @(posedge slow_clk);write_instruction(32'hff010113); 
    @(posedge slow_clk);write_instruction(32'h0000c8b7); 
    @(posedge slow_clk);write_instruction(32'h00002e37); 
    @(posedge slow_clk);write_instruction(32'h00112623); 
    @(posedge slow_clk);write_instruction(32'h00812423); 
    @(posedge slow_clk);write_instruction(32'h00912223); 
    @(posedge slow_clk);write_instruction(32'h00000513); 
    @(posedge slow_clk);write_instruction(32'h00000713); 
    @(posedge slow_clk);write_instruction(32'h00011637); 
    @(posedge slow_clk);write_instruction(32'h00011837); 
    @(posedge slow_clk);write_instruction(32'h000112b7); 
    @(posedge slow_clk);write_instruction(32'h00011fb7); 
    @(posedge slow_clk);write_instruction(32'h00100693); 
    @(posedge slow_clk);write_instruction(32'h00200e93); 
    @(posedge slow_clk);write_instruction(32'h35088893); 
    @(posedge slow_clk);write_instruction(32'h710e0e13); 
    @(posedge slow_clk);write_instruction(32'h00300093); 
    @(posedge slow_clk);write_instruction(32'h00400493); 
    @(posedge slow_clk);write_instruction(32'hf0000393); 
    @(posedge slow_clk);write_instruction(32'h0ff00413); 
    @(posedge slow_clk);write_instruction(32'h00170713); 
    @(posedge slow_clk);write_instruction(32'h100f7793); 
    @(posedge slow_clk);write_instruction(32'h0087d793); 
    @(posedge slow_clk);write_instruction(32'h200f7593); 
    @(posedge slow_clk);write_instruction(32'h0095d593); 
    @(posedge slow_clk);write_instruction(32'h80f182a3); 
    @(posedge slow_clk);write_instruction(32'h3ab60023); 
    @(posedge slow_clk);write_instruction(32'h0ff7f793); 
    @(posedge slow_clk);write_instruction(32'h00d79463); 
    @(posedge slow_clk);write_instruction(32'h38d80fa3); 
    @(posedge slow_clk);write_instruction(32'h3a064783); 
    @(posedge slow_clk);write_instruction(32'h02d78063); 
    @(posedge slow_clk);write_instruction(32'h39f84783); 
    @(posedge slow_clk);write_instruction(32'h03170263); 
    @(posedge slow_clk);write_instruction(32'h41c707b3); 
    @(posedge slow_clk);write_instruction(32'h00f037b3); 
    @(posedge slow_clk);write_instruction(32'h40f007b3); 
    @(posedge slow_clk);write_instruction(32'h00f57533); 
    @(posedge slow_clk);write_instruction(32'hfb9ff06f); 
    @(posedge slow_clk);write_instruction(32'h39d80fa3); 
    @(posedge slow_clk);write_instruction(32'h00200793); 
    @(posedge slow_clk);write_instruction(32'hff1712e3); 
    @(posedge slow_clk);write_instruction(32'hfa0514e3); 
    @(posedge slow_clk);write_instruction(32'h39c2d703); 
    @(posedge slow_clk);write_instruction(32'h00d70e63); 
    @(posedge slow_clk);write_instruction(32'h05d70c63); 
    @(posedge slow_clk);write_instruction(32'h08170463); 
    @(posedge slow_clk);write_instruction(32'h0a970c63); 
    @(posedge slow_clk);write_instruction(32'h00100513); 
    @(posedge slow_clk);write_instruction(32'h00000713); 
    @(posedge slow_clk);write_instruction(32'hf89ff06f); 
    @(posedge slow_clk);write_instruction(32'h39efc703); 
    @(posedge slow_clk);write_instruction(32'h00171713); 
    @(posedge slow_clk);write_instruction(32'h00176713); 
    @(posedge slow_clk);write_instruction(32'h0ff77713); 
    @(posedge slow_clk);write_instruction(32'h38ef8f23); 
    @(posedge slow_clk);write_instruction(32'h007f7f33); 
    @(posedge slow_clk);write_instruction(32'h00ef7f33); 
    @(posedge slow_clk);write_instruction(32'h01d78c63); 
    @(posedge slow_clk);write_instruction(32'hfc871ae3); 
    @(posedge slow_clk);write_instruction(32'h39d29e23); 
    @(posedge slow_clk);write_instruction(32'h00100513); 
    @(posedge slow_clk);write_instruction(32'h00000713); 
    @(posedge slow_clk);write_instruction(32'hf55ff06f); 
    @(posedge slow_clk);write_instruction(32'h38929e23); 
    @(posedge slow_clk);write_instruction(32'hfa871ee3); 
    @(posedge slow_clk);write_instruction(32'hfe9ff06f); 
    @(posedge slow_clk);write_instruction(32'h39efc703); 
    @(posedge slow_clk);write_instruction(32'h00171713); 
    @(posedge slow_clk);write_instruction(32'h0ff77713); 
    @(posedge slow_clk);write_instruction(32'h38ef8f23); 
    @(posedge slow_clk);write_instruction(32'h007f7f33); 
    @(posedge slow_clk);write_instruction(32'h00ef7f33); 
    @(posedge slow_clk);write_instruction(32'h01d78a63); 
    @(posedge slow_clk);write_instruction(32'hf8071ce3); 
    @(posedge slow_clk);write_instruction(32'h38d29e23); 
    @(posedge slow_clk);write_instruction(32'h00100513); 
    @(posedge slow_clk);write_instruction(32'hf1dff06f); 
    @(posedge slow_clk);write_instruction(32'h38129e23); 
    @(posedge slow_clk);write_instruction(32'hfedff06f); 
    @(posedge slow_clk);write_instruction(32'h39efc703); 
    @(posedge slow_clk);write_instruction(32'h00175713); 
    @(posedge slow_clk);write_instruction(32'h08076713); 
    @(posedge slow_clk);write_instruction(32'h38ef8f23); 
    @(posedge slow_clk);write_instruction(32'h007f7f33); 
    @(posedge slow_clk);write_instruction(32'h00ef7f33); 
    @(posedge slow_clk);write_instruction(32'h00d78863); 
    @(posedge slow_clk);write_instruction(32'hf68712e3); 
    @(posedge slow_clk);write_instruction(32'h38929e23); 
    @(posedge slow_clk);write_instruction(32'hf5dff06f); 
    @(posedge slow_clk);write_instruction(32'h39d29e23); 
    @(posedge slow_clk);write_instruction(32'hf4871ae3); 
    @(posedge slow_clk);write_instruction(32'hff1ff06f); 
    @(posedge slow_clk);write_instruction(32'h39efc703); 
    @(posedge slow_clk);write_instruction(32'h00175713); 
    @(posedge slow_clk);write_instruction(32'h38ef8f23); 
    @(posedge slow_clk);write_instruction(32'h007f7f33); 
    @(posedge slow_clk);write_instruction(32'h00ef7f33); 
    @(posedge slow_clk);write_instruction(32'h00d78a63); 
    @(posedge slow_clk);write_instruction(32'hf2071ae3); 
    @(posedge slow_clk);write_instruction(32'h38129e23); 
    @(posedge slow_clk);write_instruction(32'h00100513); 
    @(posedge slow_clk);write_instruction(32'heb9ff06f); 
    @(posedge slow_clk);write_instruction(32'h38d29e23); 
    @(posedge slow_clk);write_instruction(32'hfedff06f); 
    @(posedge slow_clk);write_instruction(32'h100f7793); 
    @(posedge slow_clk);write_instruction(32'h0087d793); 
    @(posedge slow_clk);write_instruction(32'h200f7693); 
    @(posedge slow_clk);write_instruction(32'h0096d693); 
    @(posedge slow_clk);write_instruction(32'h00011737); 
    @(posedge slow_clk);write_instruction(32'h80f182a3); 
    @(posedge slow_clk);write_instruction(32'h3ad70023); 
    @(posedge slow_clk);write_instruction(32'h0ff7f793); 
    @(posedge slow_clk);write_instruction(32'h00100613); 
    @(posedge slow_clk);write_instruction(32'h000116b7); 
    @(posedge slow_clk);write_instruction(32'h00c79463); 
    @(posedge slow_clk);write_instruction(32'h38f68fa3); 
    @(posedge slow_clk);write_instruction(32'h3a074703); 
    @(posedge slow_clk);write_instruction(32'h00100793); 
    @(posedge slow_clk);write_instruction(32'h00f70663); 
    @(posedge slow_clk);write_instruction(32'h39f6c503); 
    @(posedge slow_clk);write_instruction(32'h00008067); 
    @(posedge slow_clk);write_instruction(32'h00200793); 
    @(posedge slow_clk);write_instruction(32'h38f68fa3); 
    @(posedge slow_clk);write_instruction(32'h00200513); 
    @(posedge slow_clk);write_instruction(32'h00008067); 
    @(posedge slow_clk);write_instruction(32'h00011737); 
    @(posedge slow_clk);write_instruction(32'h39c75783); 
    @(posedge slow_clk);write_instruction(32'h00100693); 
    @(posedge slow_clk);write_instruction(32'h04d78a63); 
    @(posedge slow_clk);write_instruction(32'h00200613); 
    @(posedge slow_clk);write_instruction(32'h00c78c63); 
    @(posedge slow_clk);write_instruction(32'h00300593); 
    @(posedge slow_clk);write_instruction(32'h0cb78663); 
    @(posedge slow_clk);write_instruction(32'h00400613); 
    @(posedge slow_clk);write_instruction(32'h08c78263); 
    @(posedge slow_clk);write_instruction(32'h00008067); 
    @(posedge slow_clk);write_instruction(32'h00011637); 
    @(posedge slow_clk);write_instruction(32'h39e64683); 
    @(posedge slow_clk);write_instruction(32'h00169693); 
    @(posedge slow_clk);write_instruction(32'h0ff6f693); 
    @(posedge slow_clk);write_instruction(32'h38d60f23); 
    @(posedge slow_clk);write_instruction(32'hf0000613); 
    @(posedge slow_clk);write_instruction(32'h00cf7f33); 
    @(posedge slow_clk);write_instruction(32'h00df7f33); 
    @(posedge slow_clk);write_instruction(32'h08f50663); 
    @(posedge slow_clk);write_instruction(32'hfc069ce3); 
    @(posedge slow_clk);write_instruction(32'h00100793); 
    @(posedge slow_clk);write_instruction(32'h38f71e23); 
    @(posedge slow_clk);write_instruction(32'h00008067); 
    @(posedge slow_clk);write_instruction(32'h000116b7); 
    @(posedge slow_clk);write_instruction(32'h39e6c783); 
    @(posedge slow_clk);write_instruction(32'h00179793); 
    @(posedge slow_clk);write_instruction(32'h0017e793); 
    @(posedge slow_clk);write_instruction(32'h0ff7f793); 
    @(posedge slow_clk);write_instruction(32'h38f68f23); 
    @(posedge slow_clk);write_instruction(32'hf0000693); 
    @(posedge slow_clk);write_instruction(32'h00df7f33); 
    @(posedge slow_clk);write_instruction(32'h00ff7f33); 
    @(posedge slow_clk);write_instruction(32'h00200693); 
    @(posedge slow_clk);write_instruction(32'h00d51663); 
    @(posedge slow_clk);write_instruction(32'h00400693); 
    @(posedge slow_clk);write_instruction(32'h38d71e23); 
    @(posedge slow_clk);write_instruction(32'h0ff00693); 
    @(posedge slow_clk);write_instruction(32'hf8d798e3); 
    @(posedge slow_clk);write_instruction(32'h00200793); 
    @(posedge slow_clk);write_instruction(32'h38f71e23); 
    @(posedge slow_clk);write_instruction(32'h00008067); 
    @(posedge slow_clk);write_instruction(32'h00011637); 
    @(posedge slow_clk);write_instruction(32'h39e64783); 
    @(posedge slow_clk);write_instruction(32'h0017d793); 
    @(posedge slow_clk);write_instruction(32'h38f60f23); 
    @(posedge slow_clk);write_instruction(32'hf0000613); 
    @(posedge slow_clk);write_instruction(32'h00cf7f33); 
    @(posedge slow_clk);write_instruction(32'h00ff7f33); 
    @(posedge slow_clk);write_instruction(32'h06d50063); 
    @(posedge slow_clk);write_instruction(32'hf60790e3); 
    @(posedge slow_clk);write_instruction(32'h00300793); 
    @(posedge slow_clk);write_instruction(32'h38f71e23); 
    @(posedge slow_clk);write_instruction(32'h00008067); 
    @(posedge slow_clk);write_instruction(32'h00300793); 
    @(posedge slow_clk);write_instruction(32'h38f71e23); 
    @(posedge slow_clk);write_instruction(32'hf40694e3); 
    @(posedge slow_clk);write_instruction(32'hf71ff06f); 
    @(posedge slow_clk);write_instruction(32'h000115b7); 
    @(posedge slow_clk);write_instruction(32'h39e5c783); 
    @(posedge slow_clk);write_instruction(32'h0017d793); 
    @(posedge slow_clk);write_instruction(32'h0807e793); 
    @(posedge slow_clk);write_instruction(32'h38f58f23); 
    @(posedge slow_clk);write_instruction(32'hf0000593); 
    @(posedge slow_clk);write_instruction(32'h00bf7f33); 
    @(posedge slow_clk);write_instruction(32'h00ff7f33); 
    @(posedge slow_clk);write_instruction(32'h00d51463); 
    @(posedge slow_clk);write_instruction(32'h38c71e23); 
    @(posedge slow_clk);write_instruction(32'h0ff00693); 
    @(posedge slow_clk);write_instruction(32'hf0d79ae3); 
    @(posedge slow_clk);write_instruction(32'h00400793); 
    @(posedge slow_clk);write_instruction(32'h38f71e23); 
    @(posedge slow_clk);write_instruction(32'h00008067); 
    @(posedge slow_clk);write_instruction(32'h38a71e23); 
    @(posedge slow_clk);write_instruction(32'hf00790e3); 
    @(posedge slow_clk);write_instruction(32'hfa1ff06f); 
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
