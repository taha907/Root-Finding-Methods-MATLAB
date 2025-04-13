% incremental_search_sine_example.m
% Finding root of the equation f(x) = sind(x) - 0.495 using Incremental Search Method

f = @(x) sind(x) - 0.495;   % Define the function
xa = 29;                    % Initial guess
x = xa;
tol = 0.01;                 % Tolerance
h = 1;                      % Initial step size

% Loop to approach the root by reducing the step size
while h >= tol && f(x) ~= 0
    if f(x) * f(x + h) < 0
        h = h * 0.2;        % Reduce the step size
    else
        x = x + h;          % Take one step forward
    end
end

% Display the approximate root
kok = x;
fprintf("Approximate root of the equation: %.4f\n", kok);
