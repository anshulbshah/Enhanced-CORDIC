`timescale 1ns / 1ps

module iter_jln2(c2,c1,c0,X,Y,Xnew,Ynew);
input c2,c1,c0;
input [15:0] X,Y;
output reg [15:0] Xnew,Ynew;

always@(X,Y,c2,c1,c0)
begin
Xnew = X>>(2*(5+c1)+1); //+ r*(2*d-1)*Y<<4;
Xnew = X - c0*Xnew;
Xnew = Xnew  + c0*(2*c2-1)*(Y>>(5+c1));
end

always@(X,Y,c2,c1,c0)
begin
Ynew = Y>>(2*(5+c1)+1); //+ r*(2*d-1)*Y<<4;
Ynew= Y - c0*Ynew;
Ynew = Ynew  - c0*(2*c2-1)*(X>>(5+c1));
end

endmodule
