clear;
clc;
close;
t=0:1:6;
x=1:4;
h1=[1,1,-1,1];
x1=convol(h1,x)
plot2d3 (t,x1)
