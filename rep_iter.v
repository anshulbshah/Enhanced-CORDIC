`timescale 1ns / 1ps

module rep_iter(r,d,X,Y,Xnew,Ynew);
input r,d;
input [15:0] X,Y;
output reg [15:0] Xnew,Ynew;

always@(X,Y,r,d)
begin
Xnew = X>>9; //+ r*(2*d-1)*Y<<4;
Xnew = X - r*Xnew;
Xnew = Xnew  + r*(2*d-1)*(Y>>4);
end

always@(X,Y,r,d)
begin
Ynew = Y>>9; //+ r*(2*d-1)*Y<<4;
Ynew= Y - r*Ynew;
Ynew = Ynew  - r*(2*d-1)*(X>>4);
end


endmodule
