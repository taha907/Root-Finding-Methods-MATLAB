% bisection_graph_based_root.m
% This script uses the Bisection Method to approximately find
% the root of the function: f(x) = x*e^(-x) + x^3 + 1

% Define the function
f = @(x) x.*exp(-x) + x.^3 + 1;

% Initial interval [xa, xu]
xa = -2;   
xu = 0;

% Tolerance level
tolerance = 0.0001;

% Bisection loop
while abs(xu - xa) / 2 > tolerance 
    xo = (xa + xu) / 2;  % Midpoint of the interval

    % Check for sign change to narrow the interval
    if f(xa) * f(xo) < 0
        xu = xo;  % Root is in the left subinterval
    else
        xa = xo;  % Root is in the right subinterval
    end
end

% Final approximation of the root
root = (xa + xu) / 2;

% Display the result
fprintf("Approximate root using Bisection Method: %f\n", root);
