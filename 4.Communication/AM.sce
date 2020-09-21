clc;
clear;

f_s=1;//Signal Frequencies
f_c=8;//Carrier Frequencies

t=0:0.001:5;

i_s=2*sin(2*%pi*f_s*t); // Information Signal
c_s=15*sin(2*%pi*f_c*t);// Carrier Signal

Modulated_signal=5*(1+(2*sin(2*%pi*f_s*t))).*sin(2*%pi*f_c*t);

subplot(3,1,1);
plot(i_s);//plot of Information Signal
title('Information Signal');

subplot(3,1,2);
plot(c_s);//plot of Carrier signal
title('Carrier Signal');

subplot(3,1,3);
plot(Modulated_signal);//plot of modulated signal
title('Amplitude Modulation Signal');
xgrid;//function to produce grids




