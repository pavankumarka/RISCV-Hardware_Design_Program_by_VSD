 module sky130_sram_1kbyte_1rw1r_32x256_8_inst(
    `ifdef USE_POWER_PINS
        vccd1,
        vssd1,
    `endif
    // Port 0: RW
        clk0,csb0,web0,wmask0,addr0,din0,dout0,
    // Port 1: R
        clk1,csb1,addr1,dout1
    );

    parameter NUM_WMASKS = 4 ;
    parameter DATA_WIDTH = 32 ;
    parameter ADDR_WIDTH = 8 ;
    parameter RAM_DEPTH = 1 << ADDR_WIDTH;
    // FIXME: This delay is arbitrary.
    parameter DELAY = 0 ;
    parameter VERBOSE = 0 ; //Set to 0 to only display warnings
    parameter T_HOLD = 0 ; //Delay to hold dout value after posedge. Value is arbitrary

    `ifdef USE_POWER_PINS
        inout vccd1;
        inout vssd1;
    `endif
    input  clk0; // clock
    input   csb0; // active low chip select
    input  web0; // active low write control
    input [NUM_WMASKS-1:0]   wmask0; // write mask
    input [ADDR_WIDTH-1:0]  addr0;
    input [DATA_WIDTH-1:0]  din0;
    output [DATA_WIDTH-1:0] dout0;
    input  clk1; // clock
    input   csb1; // active low chip select
    input [ADDR_WIDTH-1:0]  addr1;
    output [DATA_WIDTH-1:0] dout1;

    reg  csb0_reg;
    reg  web0_reg;
    reg [NUM_WMASKS-1:0]   wmask0_reg;
    reg [ADDR_WIDTH-1:0]  addr0_reg;
    reg [DATA_WIDTH-1:0]  din0_reg;
    reg [DATA_WIDTH-1:0]  dout0;

    // All inputs are registers
    always @(posedge clk0)
    begin
        csb0_reg = csb0;
        web0_reg = web0;
        wmask0_reg = wmask0;
        addr0_reg = addr0;
        din0_reg = din0;
        #(T_HOLD) dout0 = 32'bx;
        // if ( !csb0_reg && web0_reg && VERBOSE ) 
        //   $display($time," Reading %m addr0=%b dout0=%b",addr0_reg,mem[addr0_reg]);
        // if ( !csb0_reg && !web0_reg && VERBOSE )
        //   $display($time," Writing %m addr0=%b din0=%b wmask0=%b",addr0_reg,din0_reg,wmask0_reg);
    end

    reg  csb1_reg;
    reg [ADDR_WIDTH-1:0]  addr1_reg;
    reg [DATA_WIDTH-1:0]  dout1;

    // All inputs are registers
    always @(posedge clk1)
    begin
        csb1_reg = csb1;
        addr1_reg = addr1;
        // if (!csb0 && !web0 && !csb1 && (addr0 == addr1))
        //      $display($time," WARNING: Writing and reading addr0=%b and addr1=%b simultaneously!",addr0,addr1);
        #(T_HOLD) dout1 = 32'bx;
        // if ( !csb1_reg && VERBOSE ) 
        //   $display($time," Reading %m addr1=%b dout1=%b",addr1_reg,mem[addr1_reg]);
    end

    reg [DATA_WIDTH-1:0]    mem [0:RAM_DEPTH-1];

    initial
    begin

    	mem[0] = 32'h00000000;
	mem[1] = 32'h00000000;
	mem[2] = 32'hff010113;
	mem[3] = 32'h00112623;
	mem[4] = 32'h00812423;
	mem[5] = 32'h00912223;
	mem[6] = 32'h00000e13;
	mem[7] = 32'h00100493;
	mem[8] = 32'h00000713;
	mem[9] = 32'h00011337;
	mem[10] = 32'h00011fb7;
	mem[11] = 32'h00100613;
	mem[12] = 32'h00200e93;
	mem[13] = 32'h03200513;
	mem[14] = 32'h00300393;
	mem[15] = 32'h00400093;
	mem[16] = 32'hf0000293;
	mem[17] = 32'h0ff00413;
	mem[18] = 32'h00170713;
	mem[19] = 32'h100f7693;
	mem[20] = 32'h0086d693;
	mem[21] = 32'h200f7793;
	mem[22] = 32'h0097d793;
	mem[23] = 32'h80d1a623;
	mem[24] = 32'h80f1a423;
	mem[25] = 32'h06c68a63;
	mem[26] = 32'h00c78e63;
	mem[27] = 32'h02a70063;
	mem[28] = 32'hff670793;
	mem[29] = 32'h00f037b3;
	mem[30] = 32'h40f007b3;
	mem[31] = 32'h00f5f5b3;
	mem[32] = 32'hfc9ff06f;
	mem[33] = 32'h21d32c23;
	mem[34] = 32'hfea714e3;
	mem[35] = 32'hfa059ee3;
	mem[36] = 32'h21832783;
	mem[37] = 32'hfa078ae3;
	mem[38] = 32'h214fa683;
	mem[39] = 32'h06c68063;
	mem[40] = 32'h09d68c63;
	mem[41] = 32'h0c768263;
	mem[42] = 32'h00000713;
	mem[43] = 32'h00100593;
	mem[44] = 32'hf8169ce3;
	mem[45] = 32'h401e5e13;
	mem[46] = 32'h005f7f33;
	mem[47] = 32'h01cf6f33;
	mem[48] = 32'h02c78463;
	mem[49] = 32'h020e1663;
	mem[50] = 32'h207faa23;
	mem[51] = 32'h00000713;
	mem[52] = 32'h00100593;
	mem[53] = 32'hf75ff06f;
	mem[54] = 32'h20c32c23;
	mem[55] = 32'hf8c798e3;
	mem[56] = 32'h20032c23;
	mem[57] = 32'hf89ff06f;
	mem[58] = 32'h20cfaa23;
	mem[59] = 32'hfc0e0ee3;
	mem[60] = 32'h00000713;
	mem[61] = 32'h00100593;
	mem[62] = 32'hf51ff06f;
	mem[63] = 32'h001e1e13;
	mem[64] = 32'h0ffe7e13;
	mem[65] = 32'h005f7f33;
	mem[66] = 32'h01cf6f33;
	mem[67] = 32'h01d78c63;
	mem[68] = 32'h000e1e63;
	mem[69] = 32'h21dfaa23;
	mem[70] = 32'h00068593;
	mem[71] = 32'h00000713;
	mem[72] = 32'hf29ff06f;
	mem[73] = 32'h201faa23;
	mem[74] = 32'hfe0e06e3;
	mem[75] = 32'h00000713;
	mem[76] = 32'h00068593;
	mem[77] = 32'hf15ff06f;
	mem[78] = 32'h04c78c63;
	mem[79] = 32'h001e1e13;
	mem[80] = 32'h001e6e13;
	mem[81] = 32'h005f7f33;
	mem[82] = 32'h01cf6f33;
	mem[83] = 32'h01d79463;
	mem[84] = 32'h207faa23;
	mem[85] = 32'h00000713;
	mem[86] = 32'h00100593;
	mem[87] = 32'hee8e16e3;
	mem[88] = 32'h20cfaa23;
	mem[89] = 32'hee5ff06f;
	mem[90] = 32'h02c78c63;
	mem[91] = 32'h401e5e13;
	mem[92] = 32'h080e6e13;
	mem[93] = 32'h005f7f33;
	mem[94] = 32'h01cf6f33;
	mem[95] = 32'h00000713;
	mem[96] = 32'h00100593;
	mem[97] = 32'hec8e12e3;
	mem[98] = 32'h201faa23;
	mem[99] = 32'hebdff06f;
	mem[100] = 32'hfac496e3;
	mem[101] = 32'h00100e13;
	mem[102] = 32'h00000493;
	mem[103] = 32'hfa9ff06f;
	mem[104] = 32'h21dfaa23;
	mem[105] = 32'hfd9ff06f;
	mem[106] = 32'hffffffff;
	mem[107] = 32'hffffffff;

    end

    // Memory Write Block Port 0
    // Write Operation : When web0 = 0, csb0 = 0
    always @ (negedge clk0)
    begin : MEM_WRITE0
        if ( !csb0_reg && !web0_reg ) begin
            if (wmask0_reg[0])
                    mem[addr0_reg][7:0] = din0_reg[7:0];
            if (wmask0_reg[1])
                    mem[addr0_reg][15:8] = din0_reg[15:8];
            if (wmask0_reg[2])
                    mem[addr0_reg][23:16] = din0_reg[23:16];
            if (wmask0_reg[3])
                    mem[addr0_reg][31:24] = din0_reg[31:24];
        end
    end

    // Memory Read Block Port 0
    // Read Operation : When web0 = 1, csb0 = 0
    always @ (negedge clk0)
    begin : MEM_READ0
        if (!csb0_reg && web0_reg)
        dout0 = #(DELAY) mem[addr0_reg];
    end

    // Memory Read Block Port 1
    // Read Operation : When web1 = 1, csb1 = 0
    always @ (negedge clk1)
    begin : MEM_READ1
        if (!csb1_reg)
        dout1 = #(DELAY) mem[addr1_reg];
    end

    endmodule

   module sky130_sram_1kbyte_1rw1r_32x256_8_data(
    `ifdef USE_POWER_PINS
        vccd1,
        vssd1,
    `endif
    // Port 0: RW
        clk0,csb0,web0,wmask0,addr0,din0,dout0,
    // Port 1: R
        clk1,csb1,addr1,dout1
    );

    parameter NUM_WMASKS = 4 ;
    parameter DATA_WIDTH = 32 ;
    parameter ADDR_WIDTH = 8 ;
    parameter RAM_DEPTH = 1 << ADDR_WIDTH;
    // FIXME: This delay is arbitrary.
    parameter DELAY = 0 ;
    parameter VERBOSE = 0 ; //Set to 0 to only display warnings
    parameter T_HOLD = 0 ; //Delay to hold dout value after posedge. Value is arbitrary

    `ifdef USE_POWER_PINS
        inout vccd1;
        inout vssd1;
    `endif
    input  clk0; // clock
    input   csb0; // active low chip select
    input  web0; // active low write control
    input [NUM_WMASKS-1:0]   wmask0; // write mask
    input [ADDR_WIDTH-1:0]  addr0;
    input [DATA_WIDTH-1:0]  din0;
    output [DATA_WIDTH-1:0] dout0;
    input  clk1; // clock
    input   csb1; // active low chip select
    input [ADDR_WIDTH-1:0]  addr1;
    output [DATA_WIDTH-1:0] dout1;

    reg  csb0_reg;
    reg  web0_reg;
    reg [NUM_WMASKS-1:0]   wmask0_reg;
    reg [ADDR_WIDTH-1:0]  addr0_reg;
    reg [DATA_WIDTH-1:0]  din0_reg;
    reg [DATA_WIDTH-1:0]  dout0;

    // All inputs are registers
    always @(posedge clk0)
    begin
        csb0_reg = csb0;
        web0_reg = web0;
        wmask0_reg = wmask0;
        addr0_reg = addr0;
        din0_reg = din0;
        #(T_HOLD) dout0 = 32'bx;
        // if ( !csb0_reg && web0_reg && VERBOSE ) 
        //   $display($time," Reading %m addr0=%b dout0=%b",addr0_reg,mem[addr0_reg]);
        // if ( !csb0_reg && !web0_reg && VERBOSE )
        //   $display($time," Writing %m addr0=%b din0=%b wmask0=%b",addr0_reg,din0_reg,wmask0_reg);
    end

    reg  csb1_reg;
    reg [ADDR_WIDTH-1:0]  addr1_reg;
    reg [DATA_WIDTH-1:0]  dout1;

    // All inputs are registers
    always @(posedge clk1)
    begin
        csb1_reg = csb1;
        addr1_reg = addr1;
        // if (!csb0 && !web0 && !csb1 && (addr0 == addr1))
        //      $display($time," WARNING: Writing and reading addr0=%b and addr1=%b simultaneously!",addr0,addr1);
        #(T_HOLD) dout1 = 32'bx;
        // if ( !csb1_reg && VERBOSE ) 
        //   $display($time," Reading %m addr1=%b dout1=%b",addr1_reg,mem[addr1_reg]);
    end

    reg [DATA_WIDTH-1:0]    mem [0:RAM_DEPTH-1];

    // Memory Write Block Port 0
    // Write Operation : When web0 = 0, csb0 = 0
    always @ (negedge clk0)
    begin : MEM_WRITE0
        if ( !csb0_reg && !web0_reg ) begin
            if (wmask0_reg[0])
                    mem[addr0_reg][7:0] = din0_reg[7:0];
            if (wmask0_reg[1])
                    mem[addr0_reg][15:8] = din0_reg[15:8];
            if (wmask0_reg[2])
                    mem[addr0_reg][23:16] = din0_reg[23:16];
            if (wmask0_reg[3])
                    mem[addr0_reg][31:24] = din0_reg[31:24];
        end
    end

    // Memory Read Block Port 0
    // Read Operation : When web0 = 1, csb0 = 0
    always @ (negedge clk0)
    begin : MEM_READ0
        if (!csb0_reg && web0_reg)
        dout0 = #(DELAY) mem[addr0_reg];
    end

    // Memory Read Block Port 1
    // Read Operation : When web1 = 1, csb1 = 0
    always @ (negedge clk1)
    begin : MEM_READ1
        if (!csb1_reg)
        dout1 = #(DELAY) mem[addr1_reg];
    end

    endmodule
 

 
