
// Root Locus 


clc
close
s=%s
num=input('Enter the Numerator =')
// Case - 1  Enter the Numerator = (s+1)
// Case - 2 Enter the Numerator = (s+1)
// Case - 3 Enter the Numerator = 1
den=input('Enter the Denominator =')
// Case - 1 Enter the Denominator = (s^2*(s+3)*(s+5))
// Case - 2 Enter the Denominator = (s*(s+2)*(s^2+2*s+5))
// Case - 3  Enter the Denominator =(s*(s+2)*(s+5))
TF = syslin('c',num,den)//Transfer function
disp("Transfer Function of system = ",TF)
h=syslin('c',num,den)
evans(h,100)


   
