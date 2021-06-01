`timescale 1ns / 1ps
module arithmetic(A,B,select,result);
input [15:0] A,B;
input  [3:0] select;
output [16:0] result;


reg [16:0] result;

always@(*)
begin
case(select)
4'b0000:
result=A;
4'b0001:
result=A+1;
4'b0010:
result=A+B;
4'b0011:
result=A+B+1;
4'b0100:
result=A-B-1;
4'b0101:
result=A-B;
4'b0110:
result=A-1;
4'b0111:
result=A;
4'b1000:
result=A|B;
4'b1001:
result=A^B;
4'b1010:
result=A&B;
4'b1011:
result=~(A);
endcase
end
endmodule

