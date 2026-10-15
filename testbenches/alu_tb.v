`timescale 1ns/1ps
module alu_tb;
    reg [31:0] A;
    reg [31:0] B;
    reg [1:0] control;
    wire c_out;
    wire Z, N, C, V;
    wire [31:0] result;

    alu dut (A, B, control, c_out, Z, N, C, V, result);

    initial begin
        A = 32'd5;
        B = 32'sd9;
        control = 2'b00;
        #10;
        $display("result = %d",$signed(result));
        $display("Z = %d",Z);
        $display("N = %d",N);
        $display("C = %d",C);
        $display("V = %d",V);

        #10;
        A = 32'd5;
        B = -32'sd9;
        control = 2'b00;
        #10;
        $display("result = %d",$signed(result));

        #10;
        A = 32'd5;
        B = 32'sd9;
        control = 2'b01;
        #10;
        $display("result = %d",$signed(result));

        #10;
        A = 32'd5;
        B = -32'sd9;
        control = 2'b01;
        #10;
        $display("result = %d",$signed(result));

        #10;
        A = 32'd0;
        B = 32'sd9;
        control = 2'b10;
        #10;
        $display("result = %d",$signed(result));

        #10;
        A = 32'd5;
        B = -32'sd9;
        control = 2'b10;
        #10;
        $display("result = %d",$signed(result));

        #10;
        A = 32'd5;
        B = 32'sd9;
        control = 2'b11;
        #10;
        $display("result = %d",$signed(result));

        #10;
        A = 32'd0;
        B = 32'sd0;
        control = 2'b11;
        #10;
        $display("result = %d",$signed(result));
    end
endmodule

