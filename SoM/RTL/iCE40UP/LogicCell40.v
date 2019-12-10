`timescale 1ns/1ns
module LogicCell40 ( carryout, lcout, ltout, carryin, clk, in0,
     in1, in2, in3, sr, ce );

   parameter SEQ_MODE = 4'b0000; //cbit[19:16]  timing parameter
   parameter C_ON = 1'b0; //cbit[20]
   parameter LUT_INIT = 16'b0000000000000000; //cbit[15:0]

output  carryout, lcout, ltout;

input  carryin, clk, in0, in1, in2, in3, sr, ce;

wire clkb = 0;

pulldown(gnd_);

    logic_cell40 LC (
            .cbit({C_ON,SEQ_MODE,LUT_INIT[15:0]}),
            .carry_in(carryin),
            .carry_out(carryout),
            .clk(clk),
            .clkb(clkb),
            .in0(in0),
            .in1(in1),
            .in2(in2),
            .in3(in3),
            .lc_out(lcout),
            .lt_out(ltout),
            .prog(gnd_),
            .purst(gnd_),
            .s_r(sr),
            .ce(ce));

endmodule //LogicCell40
