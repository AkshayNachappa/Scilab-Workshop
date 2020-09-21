clc
close
clear
// equation is p(x)=3−3x−8x^2+7x^3
// equation from given constants
y = poly([3,-3,8,7],'x','c')
disp(y)
pause
// finding roots of an equation
r = roots(y);
disp("Roots of the eqn ",r)
// Roots of a equation are -1 and 2
// Equation from given roots
pause
z = poly([-1,2],'x','r')
disp("The polynomial with roots -1 and -2 ",z);
pause
//Getting back the 1st equation from roots
a = poly(r,'x','r')
disp(a)
// summation of x^2
disp("Vectorized optimization of summation")
x=[1,2,3,4,5];
y = x*x';
disp(y)




