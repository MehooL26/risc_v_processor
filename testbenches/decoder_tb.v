module decoder_tb;
    reg [6:0] op;
    reg zero;
    wire ResultSrc, MemWrite, ALUSrc, RegWrite, PCSrc;
    wire [1:0] ImmSrc, ALUop;

    decoder dut (op, zero, ResultSrc, MemWrite, ALUSrc, RegWrite, PCSrc, ImmSrc, ALUop);

    initial begin
        op = 7'b0000011;
        zero = 0;
        #10;
        $display("RegWrite = %d; ImmSrc = %d; ALUSrc = %d; MemWrite = %d; ResultSrc = %d; ALUop = %d", RegWrite, ImmSrc, ALUSrc, MemWrite, ResultSrc, ALUop);
    end
endmodule