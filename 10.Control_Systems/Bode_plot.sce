
//Bode plot

clc
close

s=poly(0,'s')
num=input('Enter the Numarator =')
// Case - 1  Enter the Numarator = 20
// Case - 2 Enter the Numarator = (s+1)
// Case - 3 Enter the Numarator = 1
den=input('Enter the Denominator =')
// Case - 1 Enter the Denominator = (s)*(1+s)*(1+0.5*s)
// Case - 2 Enter the Denominator = (s)*(s+2)*(s+5)
// Case - 3  Enter the Denominator =(s)*(s+1)*(s+5)*(s+10)
TF = syslin('c',num,den)//Transfer function
disp(TF,"Transfer Function of system = ")
h=syslin('c',num,den)
clf();
bode(h,0.1,100)
g_margin(h)
show_margins(h)
p_margin(h)
show_margins(h)



