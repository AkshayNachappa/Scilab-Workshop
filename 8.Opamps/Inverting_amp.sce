// Inverting and non inverting amplifier
clc;
clear all;
close;
m = 200000;
vi = input("Enter input voltage= ")
rf =input("Enter feedback resistor value= ")
r1 =input("Enter input resistor value= ")
vo = (-rf/r1)*vi;                   // vo = (1+(rf/r1)*vi; //for non inverting amp
//vo = vo-(vo/m); // correction for voltage difference parameter
disp("Output voltage is ",vo)
