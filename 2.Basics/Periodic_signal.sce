clear;
clc ;
close ;
t=0:0.1:2*%pi;
y = sin(t);      
plot(t, y);
xlabel('t');
ylabel( 'sin(t)');
title( 'Periodic Wave');
