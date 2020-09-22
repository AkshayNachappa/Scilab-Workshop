function y = f(x)
   y = 2*x^2+5*x-10; // add your quadratic function here
endfunction

function y = f_prime(x)				// Gradient in 1D is derivative
   y =4*x+5;            // add the function's derivative
endfunction

function x_new = update_one_step(x_old, lambda)	
   x_new = x_old - lambda*f_prime(x_old);	// Gradient Descent
endfunction

// main
x = 0;						// initial value of x
xx = x;						// create sequence of x's

lambda = .1;					// learning rate
N = 20;						// number of steps
for n=1:N					// iterate over number of steps
   x = update_one_step(xx($),lambda);		// new x using Gradient Descent
   xx = [xx, x];				// append new x to sequence of x's
end

// report approximation of tip
x_top = xx($);
y_top = f(x_top);
disp('aproximation of tip is: T('+string(x_top)+', '+string(y_top)+')');

// plot
clf()
CROSS = -2;
L = length(xx);
plot2d(1:L,xx,CROSS);
xtitle('x approximation of tip of parabola, using gradient descent');
xlabel('n (iteration)');
ylabel('x approximation');

