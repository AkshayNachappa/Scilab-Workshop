// Exp-19 : Design the following Low Pass analog filters with the given specification.
//           (1) Butter Worth  (2) Chebyshev-I  (3) Chebyshev-II  (4) Elliptical 


//Evaluate magnitude response of the filter

// Version : Scilab 5.4.1
// Operating Syatem : Window-xp, Window-7

clc;
close;
clear;

fcut=5; //hz
n=5;//filter order
hc1=analpf(n,'cheb1',[0.1 0],fcut*2*%pi);
hc2=analpf(n,'cheb2',[0 0.1],fcut*2*%pi);
he=analpf(n,'ellip',[0.1 0.1],fcut*2*%pi);
hb=analpf(n,'butt',[0 0],fcut*2*%pi);
//hc1.dt='c';hc2.dt='c';he.dt='c';hb.dt='c';
clf();
[fr, hf]=repfreq(hc1,0,15);
plot(fr,abs(hf),'b')
[fr, hf]=repfreq(hc2,0,15);
plot(fr,abs(hf),'y')
[fr, hf]=repfreq(he,0,15);
plot(fr,abs(hf),'r')
[fr, hf]=repfreq(hb,0,15);
plot(fr,abs(hf),'c')

xgrid();
legend(["Chebyshev I","Chebyshev II","Elliptic","Butterworth"]);
xlabel("Frequency (Hz)");
ylabel("Gain");
title("Analog filters of order 5");

