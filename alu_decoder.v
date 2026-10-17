module alu_decoder(
    input [1:0] ALUop,
    input op_5, funct_7_5,
    input [2:0] funct_3,
    output reg [2:0] control
);

    always @(*) begin
        case(ALUop)
            2'b00 : control = 3'b000;
            2'b01 : control = 3'b001;
            2'b10 : begin
                if ((funct_3 == 3'b000) && ({op_5,funct_7_5} != 2'b11))
                    control = 3'b000;
                else if ((funct_3 == 3'b000) && ({op_5,funct_7_5} == 2'b11))
                    control = 3'b001;
                else if (funct_3 == 3'b010)
                    control = 3'b101;
                else if (funct_3 == 3'b110)
                    control = 3'b011;
                else if (funct_3 == 3'b111)
                    control = 3'b010;
                else
                    control = 3'b000;
            end
            default : control = 3'b000;
        endcase
    end
endmodule