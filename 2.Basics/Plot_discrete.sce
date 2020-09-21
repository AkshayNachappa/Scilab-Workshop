clear;
clc ;
close ;
t=0:0.1:2; 
x1=2*exp(-2*t);
subplot(1,2,1); 
plot2d3(t,x1); 
xlabel('t');
ylabel( 'x(t)');
title( 'DISCRETE TIME PLOT');

