% bisection_method_algorithm.m
% This script uses the Bisection Method to find the root of 
% the function g(x) = x^2 - 4x + 4 within a specified tolerance.

% Define the function
g = @(x) x.^2 - 4.*x + 4;

% Initial interval [xa, xu] and tolerance
xa = -1;
xu = 3;
tolerance = 1;

% Bisection iteration
while abs(xu - xa) / 2 > tolerance
    xo = (xa + xu) / 2;  % Midpoint
    
    if g(xa) * g(xo) < 0
        xu = xo;  % Root is in left half
    else
        xa = xo;  % Root is in right half
    end
end

% Final approximation of the root
root = (xa + xu) / 2;

% Display result
fprintf("Approximate root found using Bisection Method: %.4f\n", root);
