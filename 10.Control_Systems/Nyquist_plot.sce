
// Nyquist plot
clc;
clear;
close

s=poly(0,'s')
num=input('Enter the Numerator =')
// Case - 1  Enter the Numerator = 1
// Case - 2 Enter the Numerator = (5+s)*(s+40)
// Case - 3 Enter the Numerator = (s+1)
den=input('Enter the Denominator =')
// Case - 1 Enter the Denominator = (s*(s+1)*(2*s+1))
// Case - 2 Enter the Denominator = (s^3)*(s+200)*(s+1000)
// Case - 3  Enter the Denominator =(s^2)*(s+5)*(s+10)
TF = syslin('c',num,den)//Transfer function
disp("Transfer Function of system = ",TF)
h=syslin('c',num,den)
nyquist(h);

