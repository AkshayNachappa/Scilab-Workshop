// clearing screen, variables and closing other figures
clc;
clear;
close;
// initializing values
disp("Simple Arithmetics")
a = input("Enter value of a -> ");
b = input("Enter value of b -> ");
//displaying a and b
disp(a,b)
// simple calculations
s = a+b;
d = a-b;
q = a/b;
m = a*b;
//displaying values
disp('Sum of a and b',s)
disp('-----------------')
disp('Difference of a and b',d)
disp('-----------------')
disp('Fraction of a by b',q)
disp('-----------------')
disp('Product of a and b',m)
disp('-----------------')
pause
// row vectors
disp("Vectors")
A = [1:2:10];
B = linspace(5,20,10);
// displaying values
disp(A)
disp(B)
disp('-----------------')
pause
// Matrices
disp("Matrices")
//3x3 matrix
A = [1,2,3;4,5,6;7,8,9]
disp(A)
// 3x3 matrix of random numbers
B = rand(3,3)
disp(B)
// 4x5 matrix of zeros
Z = zeros(4,5)
disp(Z)
// 4x4 identity matrix
I = eye(4,4)
disp(I)
disp('-----------------')
pause
X = A(2,3)
disp("Extracting row 2 col 3 value of matrix A",X)
Y = B(:,2)
disp("Extracting col 2",Y)
D = B(1,:)
disp("Extracting row 1",D)
T = A'
disp('Transpose of Matrix A',T)
[row,col] = size(Z)
disp("Dimensons of Matrix Z")
disp(row,col)

