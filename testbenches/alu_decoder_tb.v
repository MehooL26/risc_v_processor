module alu_decoder_tb;
    reg [1:0] ALUop;
    reg op_5, funct_7_5;
    reg [2:0] funct_3;
    wire [2:0] control;

    alu_decoder dut (ALUop, op_5, funct_7_5, funct_3, control);

    initial begin
        ALUop = 2'b10;
        op_5 = 1'b1;
        funct_7_5 = 1'b1;
        funct_3 = 3'b110;
        #10;
        $display("control = %b", control);
        $finish;
    end
endmodule