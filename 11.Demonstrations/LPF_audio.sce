// LPF on audio file

clc;                                                //clear console
clear;
xdel(winsid());                                     // clears all windows and figures
fc=input('Enter cutoff freq in Hz fc =')           //Cutoff frequency
fs=12200;
n=10;                                              //Filter order
Fp=2*fc/fs;
[Hz]=iir(n,'lp','butt',[Fp/2,0],[0,0])
[p,z,g]=iir(n,'lp','butt',[Fp/2,0],[0,0])          //Filter design
[Hw,w]=frmag(Hz,256);
figure(1)
subplot(2,1,1)
plot(2*w,abs(Hw));
xlabel('Normalized Digital frequency w->')
ylabel('magnitude');
title('Magnitude response of IIR filter')
xgrid(1)
subplot(2,1,2)
plot(2*w*fs,abs(Hw));
xlabel('Analog Frequency in Hz f --->')
ylabel('Magnitude |H(w)|=')
title('Magnitude Response of IIR LPF')
xgrid(1)

[y,Fs]=wavread("meow.wav")                         //Reading input sound signal
figure(2)
subplot(2,1,1)
plot(y)
title('Input signal waveform');
xlabel('Frequency-->');
ylabel('Magnitude-->');
playsnd(y)
pause

outlo=filter(z,abs(p),y);                         //Passing accquired signal through desired filter
subplot(2,1,2)
plot(outlo)
title('Output signal waveform after filtering')
xlabel('Frequency-->');
ylabel('Magnitude-->');
playsnd(outlo)





