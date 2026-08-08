`timescale 1ns/1ps

module mux2x1_tb;

reg A;
reg B;
reg S;

wire Y;

mux2x1 uut (
    .A(A),
    .B(B),
    .S(S),
    .Y(Y)
);

initial begin

    $dumpfile("mux.vcd");
    $dumpvars(0,mux2x1_tb);

    $display("A B S | Y");
    $display("-------------");

    A=0; B=0; S=0; #10;
    $display("%b %b %b | %b",A,B,S,Y);

    A=0; B=1; S=0; #10;
    $display("%b %b %b | %b",A,B,S,Y);

    A=1; B=0; S=0; #10;
    $display("%b %b %b | %b",A,B,S,Y);

    A=1; B=1; S=0; #10;
    $display("%b %b %b | %b",A,B,S,Y);

    A=0; B=0; S=1; #10;
    $display("%b %b %b | %b",A,B,S,Y);

    A=0; B=1; S=1; #10;
    $display("%b %b %b | %b",A,B,S,Y);

    A=1; B=0; S=1; #10;
    $display("%b %b %b | %b",A,B,S,Y);

    A=1; B=1; S=1; #10;
    $display("%b %b %b | %b",A,B,S,Y);

    $finish;

end

endmodule