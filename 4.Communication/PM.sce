clc;
clear;

f_s=1;//Signal Frequencies
f_c=8;//Carrier Frequencies

t=0:0.001:5;

Phase_deviation_facotr=35

i_s=2*sin(2*%pi*f_s*t); // Information Signal
c_s=15*sin(2*%pi*f_c*t);// Carrier Signal

Modulated_signal=15.*cos((2*%pi*f_c*t)+(Phase_deviation_facotr.*sin(2*%pi*f_s*t)));

subplot(3,1,1);
plot(i_s)
title('Information Signal');

subplot(3,1,2);
plot(c_s)
title('Carrier Signal');

subplot(3,1,3);
plot(Modulated_signal)
title('Phase Modulation Signal');
