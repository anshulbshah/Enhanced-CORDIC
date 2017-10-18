`timescale 1ns / 1ps

module jgn2(c2,c1,c0,X,Y,Xnew,Ynew,j);
input c2,c1,c0;
input [3:0] j;
input [15:0] X,Y;
output reg [15:0] Xnew,Ynew;

always@(X,Y,c2,c1,c0,j)
begin
Xnew = X  + c0*(2*c2-1)*(Y>>(j+c1));
end

always@(X,Y,c2,c1,c0,j)
begin
Ynew = Y  - c0*(2*c2-1)*(X>>(j+c1));
end

endmodule
