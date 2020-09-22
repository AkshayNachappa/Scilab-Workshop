x_1 = 0; y_1 = 0; d_1 = 5;
x_2 = 8; y_2 = 1; d_2 = 4;
x_3 = 7; y_3 = 9; d_3 = 6;
x_4 = 2; y_4 = 10; d_4 = 7;

xx = [x_1,x_2,x_3,x_4];
yy = [y_1,y_2,y_3,y_4];
//dd = [d_1,d_2,d_3,d_4];
 dd = [5,4.5,6.7,7.3];

function z = phi(x,y,d_i,x_i,y_i)
   //z = abs(d_i - sqrt((x-x_i)^2+(y-y_i)^2));
   z = d_i - sqrt((x-x_i)^2+(y-y_i)^2);
   z = z*z;
endfunction

function z = Q_x(x,y)
   epsilon = .1;
   z = 0;
   n = length(dd);
   for i=1:n
      d_i = dd(i);
      x_i = xx(i);
      y_i = yy(i);
      z = z + phi(x+epsilon,y,d_i,x_i,y_i);
      z = z - phi(x-epsilon,y,d_i,x_i,y_i);
   end
   z = z/2/epsilon;
endfunction

function z = Q_y(x,y)
   epsilon = .1;
   z = 0;
   n = length(dd);
   for i=1:n
      d_i = dd(i);
      x_i = xx(i);
      y_i = yy(i);
      z = z + phi(x,y+epsilon,d_i,x_i,y_i);
      z = z - phi(x,y-epsilon,d_i,x_i,y_i);
   end
   z = z/2/epsilon;
endfunction

function xy = update_one_step(xy,lambda)
   x = xy(1);
   y = xy(2);
   // update
   x = x - lambda*Q_x(x,y);
   y = y - lambda*Q_y(x,y);
   xy = [x,y];
endfunction

function xy = update_many_steps(xy,lambda,N)
   for n=1:N
      xy = update_one_step(xy,lambda);
   end
endfunction

function [] = main()
   xy = [0,0];
   M = xy;
   lambda = .05;
   N = 1; 
   for n=1:30
      xy = update_many_steps(xy,lambda,N);
      M = [M;xy];
      disp('#'+string(n*N)+'   x = '+string(xy(1))+'   y = '+string(xy(2)));
   end
   clf();
   CROSS = -2;
   plot2d(M(:,1),M(:,2),CROSS);
   xtitle('quadruple lateration');
   xlabel('x');
   ylabel('y');
   x_final = M($,1);
   y_final = M($,2);
   RED = 5;
   plot2d([x_final,x_final],[0,y_final],RED);
   plot2d([0,x_final],[y_final,y_final],RED)
endfunction

main()
