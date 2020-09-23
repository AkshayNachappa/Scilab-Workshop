clc;
clear;
close;
// CTFT
f = 20;
t = [0:0.01:1];
x = sin(2*%pi*f*t);
Y = fft(x)          //fourier transform
mag = abs(Y);       //magnitude of fft
theta = atan(imag(Y),real(Y));  //phase of fft
subplot(2,2,1)
plot2d3(t,x)
xtitle("Msg sig","time","Amp")

subplot(2,2,2)
plot2d3(Y)
xtitle("fourier tfm","freq","Amp")

subplot(2,2,3)
plot2d3(mag)
xtitle("mag spectrum","freq","Amp")

subplot(2,2,4)
plot2d3(theta)
xtitle("Phase spectrum","length","Angle")
pause
// DTFT
clc;
clear;
close;
n = 0:3;
x = [2,0,2,0];    //4 point DFT
Y = fft(x);
y = fft(Y,1);   //inverse fourier transform
mag = abs(Y);
ang = atan(imag(Y),real(Y));
subplot(3,2,1)
a = gca();              //gca is "get current axes" property
a.y_location ="origin"; // sets axes to origin, by default it's at bottom
a.x_location ="origin";
plot2d3(n,x)
xtitle("Msg sig","time","Amp")

subplot(3,2,2)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d3(n,Y)
xtitle("fourier tfm","freq","Amp")

subplot(3,2,3)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d3(n,mag)
xtitle("mag spectrum","freq","Amp")

subplot(3,2,4)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d3(n,ang)
xtitle("angle spectrum","length","Angle")

subplot(3,2,5)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d3(abs(y))
xtitle("mag spectrum","freq","Amp")

subplot(3,2,6)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d3(atan(imag(y),real(y)))
xtitle("Phase spectrum","length","Angle")

