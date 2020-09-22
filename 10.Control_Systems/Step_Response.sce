//STEP RESPONSES OF A 2ND ORDER SYSTEM
clc;
clear all;
t=0:0.000001:0.0002;
zeta=input('Enter the values for zeta =')//[0.4 1 1.6];
cv=[1 2 3];
s=%s;
wn = input('Enter the value for wn =')//10^5;
for n=1:3 
    den = s^2 + 2*zeta(n)*(wn)*s+(wn^2); 
    P = syslin('c',wn,den);
    Ps=csim('step',t,P);    // change 'step' to 'impuls' to get impulse response
    plot2d(t,Ps,style=cv(n));
end;
xgrid;
xtitle(['Step Responses of a system for zeta=0.4(underdamped), zeta=1(critically damped) & zeta=1.6(overdamped)'],'Time', 'Amplitude' );
legends(['zeta=0.4';'zeta=1';'zeta=1.6'],[1,2,3],opt=4);

