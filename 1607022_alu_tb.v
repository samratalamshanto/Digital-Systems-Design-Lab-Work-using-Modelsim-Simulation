`timescale 1ns / 1ps  
module arithmetic_tb();
reg[15:0] A,B;
reg[3:0] select;

wire[15:0] out;

integer i;

arithmetic test(A,B,select,out);

assign A= 16'b0101010100001100;
assign B = 16'b0000111101010101;

initial

for(i=0;i<12;i=i+1)
begin
select=i;
#1 $display("%d Current value of output is %b",i,out);

end 
endmodule
