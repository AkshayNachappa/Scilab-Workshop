clc;clear;close;
function [x,y]=pol2rec(r,theta)
    x = r*cos(theta*%pi/180);
    y = r*sin(theta*%pi/180);
endfunction

function [r,theta]=rec2pol(x,y)
    r = sqrt(x^2+y^2);
    theta = atan(y,x);
endfunction
[x,y] = pol2rec(3,90);
[r,t] = rec2pol(x,y);

disp(clean(x),y,r,t)
deff("[radians] = deg2rad(degree)","radians = degree*%pi/180");
[radians] = deg2rad(180)
disp(radians)
