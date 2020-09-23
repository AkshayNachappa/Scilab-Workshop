clear;
clc;
close;
t=0:0.01:6;
u=ones(t).*(t>=0);
r=2*t.*(t>=0); 
plot(t,r); 
xgrid(4,1,7);
xlabel("t");
ylabel("r ( t )");
title("Ramp");

