`timescale 1ns / 1ps

module top(
    input clkn,
    input clkp,
    input rst,
    output [3:0] cnt
    );
wire modyclk, diffclk;

// Instantiate the module
counter counter_inst (
    .clk(modyclk), 
    .rst(rst), 
    .count(cnt)
    );


// Instantiate the module
modefier mody_inst (
    .clk(diffclk), 
    .rst(rst), 
    .clko(modyclk)
    );

//generator instance
  gen gen_inst
   (// Clock in ports
    .CLK_IN1_P(clkp),    // IN
    .CLK_IN1_N(clkn),    // IN
    // Clock out ports
    .CLK_OUT1(diffclk),     // OUT
    // Status and control signals
    .RESET(rst));       // IN



endmodule
