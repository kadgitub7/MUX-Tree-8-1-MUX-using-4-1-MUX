`timescale 1ns / 1ps

module eightOneMUXTree_tb();
    reg I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2;
    wire Y;
    
    eightOneMUXTree uut(I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2,Y);
    
    initial begin
        I0=1; I1=0; I2=0; I3=0; I4=0; I5=0; I6=0; I7=0;
        S2=0; S1=0; S0=0; #10;
        $display("S=%b%b%b | Y=%b",S2,S1,S0,Y);

        I0=0; I1=1;
        S2=0; S1=0; S0=1; #10;
        $display("S=%b%b%b | Y=%b",S2,S1,S0,Y);

        I1=0; I2=1;
        S2=0; S1=1; S0=0; #10;
        $display("S=%b%b%b | Y=%b",S2,S1,S0,Y);

        I2=0; I3=1;
        S2=0; S1=1; S0=1; #10;
        $display("S=%b%b%b | Y=%b",S2,S1,S0,Y);

        I3=0; I4=1;
        S2=1; S1=0; S0=0; #10;
        $display("S=%b%b%b | Y=%b",S2,S1,S0,Y);

        I4=0; I5=1;
        S2=1; S1=0; S0=1; #10;
        $display("S=%b%b%b | Y=%b",S2,S1,S0,Y);

        I5=0; I6=1;
        S2=1; S1=1; S0=0; #10;
        $display("S=%b%b%b | Y=%b",S2,S1,S0,Y);

        I6=0; I7=1;
        S2=1; S1=1; S0=1; #10;
        $display("S=%b%b%b | Y=%b",S2,S1,S0,Y);
    end
endmodule
