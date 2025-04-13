% stepwise_root_finding.m
% This script finds the approximate root of f(x) = x^2 - 5
% using the stepwise method (step size reduction)

% Define the function
f = @(x) x.^2 - 5;

tolerance = 0.2;   % Acceptable error (tolerance)
h = 0.2;           % Initial step size
xa = 2;            % Starting point
x = xa;            % Assign initial value to x

% Iteratively approach the root
while h >= tolerance && f(x) ~= 0
    % Check if the function changes sign in the next step
    if f(x) * f(x + h) < 0
        h = h * 0.1;  % Reduce the step size
    else
        x = x + h;    % Take a step forward
    end
end

% Store the approximate root
root = x;

% Display result
fprintf("Approximate root using Stepwise Method: %.4f\n", root);
