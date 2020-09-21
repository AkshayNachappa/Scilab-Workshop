clear;
clc;
close;
t=0:0.01:6;
u=ones(t).*(t>=0);
plot(t,u);
xgrid(4,1,7);
xlabel("t");
ylabel("u(t)"); 
title("Unit step "," fontsize ",4); // just to adjust font size 

set(gca(),"data bounds",matrix([-6,6,-0.1,1.1],2,-1) ); // Range of axis 

//Ramp Signal 
