`timescale 1ns / 1ps

module post_processing(d1,d0,q0,q1,Xin,Yin,Xout,Yout);
input d1,d0,q1,q0;
input signed [15:0] Xin,Yin;
output reg signed [15:0] Xout,Yout;
reg signed [35:0] Xtest,Ytest,Xtest2,Ytest2;
reg signed [15:0] Xfa,Yfa,Xfb,Yfb,Xfd,Yfd;
always @(Xin,Yin)
	begin
	Xfa = Xin;
	Yfa = -1*Yin;
	if(Xin > Yin)
	begin
		Xtest =(Xin - Yin);
		Xtest2 = 16'h2D41*Xtest[15:0];
		Xfb = Xtest2 >>> 14;
	end
	else
	begin
		Xtest = (Yin - Xin);
		Xtest2 = 16'h2D41*Xtest[15:0];
		Xfb = Xtest2 >>> 14;
	end
	if((Xin+Yin)>0)
	begin
		Ytest = (Yin +Xin);
		Ytest2 = 16'h2D41*Ytest[15:0];
		Yfb = Ytest2 >>> 14;
	end
	else
	begin
		Ytest = (Yin +Xin);
		Ytest2 = 16'h2D41*Ytest[15:0];
		Yfb = Ytest2 >>> 14;
	end
	Xfd = -Yin;
	Yfd = -Xin;
	end
	
always @(Xfd,Yfd)
begin 
	if(q0 ==0 && q1 == 0)
	begin
		if(d0==0 && d1==0)
		begin
		Xout = Xfa;
		Yout = Yfa;
		end
		else if(d0==1 && d1==0)
		begin
		Xout = Xfb;
		Yout = Yfb;
		end
		else if(d0==0 && d1==1)
		begin
		Xout = Xfb;
		Yout = Yfb;
		end
		else
		begin
		Xout = Xfd;
		Yout = Yfd;
		end
	end
	else if(q0 ==1 && q1 == 0)
	begin
		if(d0==0 && d1==0)
		begin
		Xout = Yfd;
		Yout = -Xfd;
		end
		else if(d0==1 && d1==0)
		begin
		Xout = Yfb;
		Yout = -Xfb;
		end
		else if(d0==0 && d1==1)
		begin
		Xout = Yfb;
		Yout = -Xfb;
		end
		else
		begin
		Xout = Yfa;
		Yout = -Xfa;
		end
	end
	else if(q0 ==0 && q1 == 1)
	begin
		if(d0==0 && d1==0)
		begin
		Xout = -Yfa;
		Yout = Xfa;
		end
		else if(d0==1 && d1==0)
		begin
		Xout = -Xfb;
		Yout = -Yfb;
		end
		else if(d0==0 && d1==1)
		begin
		Xout = -Xfb;
		Yout = -Yfb;
		end
		else
		begin
		Xout = Yfd;
		Yout = -Xfd;
		end
	end
	else if(q0 ==1 && q1 == 1)
	begin
		if(d0==0 && d1==0)
		begin
		Xout = -Xfd;
		Yout = -Yfd;
		end
		else if(d0==1 && d1==0)
		begin
		Xout = Yfb;
		Yout = Xfb;
		end
		else if(d0==0 && d1==1)
		begin
		Xout = -Yfb;
		Yout = Xfb;
		end
		else
		begin
		Xout = Xfa;
		Yout = Yfa;
		end
	end
end
		
endmodule
