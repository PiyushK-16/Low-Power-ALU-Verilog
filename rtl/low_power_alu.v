module low_power_alu #(
    parameter WIDTH = 8
)(
    input enable,

    input [WIDTH-1:0] A,
    input [WIDTH-1:0] B,

    input [3:0] opcode,

    output reg [WIDTH-1:0] result,
    output reg carry,
    output reg overflow,
    output zero,
    output negative
);

wire [WIDTH-1:0] A_iso;
wire [WIDTH-1:0] B_iso;

assign A_iso = enable ? A : {WIDTH{1'b0}};
assign B_iso = enable ? B : {WIDTH{1'b0}};

reg [WIDTH:0] temp;

always @(*) begin

    result = 0;
    carry = 0;
    overflow = 0;
    temp = 0;

    case(opcode)

        4'b0000: begin
            temp = A_iso + B_iso;
            result = temp[WIDTH-1:0];
            carry = temp[WIDTH];
        end

        4'b0001: begin
            temp = A_iso - B_iso;
            result = temp[WIDTH-1:0];
            carry = temp[WIDTH];
        end

        4'b0010:
            result = A_iso & B_iso;

        4'b0011:
            result = A_iso | B_iso;

        4'b0100:
            result = A_iso ^ B_iso;

        4'b0101:
            result = ~A_iso;

        4'b0110:
            result = A_iso << 1;

        4'b0111:
            result = A_iso >> 1;

        4'b1000:
            result = A_iso + 1;

        4'b1001:
            result = A_iso - 1;

        4'b1010:
            result = (A_iso == B_iso);

        default:
            result = 0;

    endcase

end

assign zero = (result == 0);
assign negative = result[WIDTH-1];

endmodule