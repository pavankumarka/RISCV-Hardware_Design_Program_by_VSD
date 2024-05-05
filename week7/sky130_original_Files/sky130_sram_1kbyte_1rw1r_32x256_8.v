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
	mem[2] = 32'hfe010113;
	mem[3] = 32'h00812e23;
	mem[4] = 32'h02010413;
	mem[5] = 32'hfe042623;
	mem[6] = 32'hffd00793;
	mem[7] = 32'hfef42423;
	mem[8] = 32'hfec42783;
	mem[9] = 32'h00179793;
	mem[10] = 32'hfef42223;
	mem[11] = 32'hfe442783;
	mem[12] = 32'hfe842703;
	mem[13] = 32'h00ef7f33;
	mem[14] = 32'h00ff6f33;
	mem[15] = 32'h001f7793;
	mem[16] = 32'hfef42023;
	mem[17] = 32'hfe042783;
	mem[18] = 32'h02078663;
	mem[19] = 32'h00100793;
	mem[20] = 32'hfef42623;
	mem[21] = 32'hfec42783;
	mem[22] = 32'h00179793;
	mem[23] = 32'hfef42223;
	mem[24] = 32'hfe442783;
	mem[25] = 32'hfe842703;
	mem[26] = 32'h00ef7f33;
	mem[27] = 32'h00ff6f33;
	mem[28] = 32'hfcdff06f;
	mem[29] = 32'hfe042623;
	mem[30] = 32'hfec42783;
	mem[31] = 32'h00179793;
	mem[32] = 32'hfef42223;
	mem[33] = 32'hfe442783;
	mem[34] = 32'hfe842703;
	mem[35] = 32'h00ef7f33;
	mem[36] = 32'h00ff6f33;
	mem[37] = 32'hfa9ff06f;
	mem[38] = 32'hffffffff;
	mem[39] = 32'hffffffff;

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
 

 
