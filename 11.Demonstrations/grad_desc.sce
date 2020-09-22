function y = f(x)
   y = x*x - 2*x + 3;
endfunction

function y = f_prime(x)				// Gradient in 1D is derivative
   y = 2*x - 2
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

// report approximation of top
x_top = xx($);
y_top = f(x_top);
disp('aproximation of top is: T('+string(x_top)+', '+string(y_top)+')');

// plot
clf()
CROSS = -2;
L = length(xx);
plot2d(1:L,xx,CROSS);
xtitle('x approximation of top of parabola, using gradient descent');
xlabel('n (iteration)');
ylabel('x approximation');
