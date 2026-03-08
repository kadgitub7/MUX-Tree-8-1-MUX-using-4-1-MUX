`timescale 1ns / 1ps

module eightOneMUXTree(
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    input S0,
    input S1,
    input S2,
    output Y
    );
    
    wire out1,out2;
    assign mux1E = ~S2;
    assign mux2E = S2;
    
    fourToOneMultiplexer mux1(S1,S0,I0,I1,I2,I3, mux1E,out1);
    fourToOneMultiplexer mux2(S1,S0,I4,I5,I6,I7, mux2E,out2);
    
    assign Y = out2 | out1;
    
endmodule
