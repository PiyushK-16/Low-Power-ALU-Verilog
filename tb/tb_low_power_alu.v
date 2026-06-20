`timescale 1ns/1ps

module tb_low_power_alu;

parameter WIDTH = 8;

reg enable;
reg [WIDTH-1:0] A;
reg [WIDTH-1:0] B;
reg [3:0] opcode;

wire [WIDTH-1:0] result;
wire carry;
wire overflow;
wire zero;
wire negative;

low_power_alu DUT (
    .enable(enable),
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result),
    .carry(carry),
    .overflow(overflow),
    .zero(zero),
    .negative(negative)
);

initial begin

    $monitor(
    "Time=%0t A=%d B=%d OPCODE=%b RESULT=%d",
    $time,A,B,opcode,result);

    enable=1;

    A=10; B=5; opcode=4'b0000; #10;
    A=10; B=5; opcode=4'b0001; #10;
    A=10; B=5; opcode=4'b0010; #10;
    A=10; B=5; opcode=4'b0011; #10;
    A=10; B=5; opcode=4'b0100; #10;
    A=10; B=5; opcode=4'b0101; #10;
    A=10; B=5; opcode=4'b0110; #10;
    A=10; B=5; opcode=4'b0111; #10;
    A=10; B=5; opcode=4'b1000; #10;
    A=10; B=5; opcode=4'b1001; #10;
    A=10; B=10; opcode=4'b1010; #10;

    enable=0;
    A=200;
    B=100;
    opcode=4'b0000;
    #10;

    $finish;

end

initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0,tb_low_power_alu);
end

endmodule