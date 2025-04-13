% bisection_method_example1.m
% This script uses the Bisection Method to find an approximate root of the equation f(x) = x^2 - 5
% Interval: [1, 3], Tolerance: 0.02

f = @(x) x.^2 - 5;     % Define the function
xa = 1;               % Lower bound of the interval
xu = 3;               % Upper bound of the interval
tol = 0.02;           % Tolerance value for stopping condition

while abs(xa - xu) / 2 > tol
    xo = (xa + xu) / 2;            % Midpoint of the interval
    if f(xa) * f(xo) < 0
        xu = xo;                   % Root is in the left half
    else
        xa = xo;                   % Root is in the right half
    end
end 

approx_root = (xa + xu) / 2;       % Final approximation of the root
fprintf('Approximate root found using Bisection Method: %.4f\n', approx_root);
