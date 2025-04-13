% Define the complex function f(x) = x^3 - 2*x^2 + 5*x - 3
f = @(x) x.^3 - 2*x.^2 + 5*x - 3;

% Initial guesses for the root
xa = 0;      % Lower bound of the interval
xu = 2;      % Upper bound of the interval

% Loop to iterate and refine the root approximation
for i = 1:10
    % Calculate the new approximation of the root using the Regula Falsi formula
    xr = xu - (f(xu)*(xa - xu)) / (f(xa) - f(xu));
    
    % If the root is between the upper bound and the new approximation, update the lower bound
    if f(xu) * f(xr) < 0
        xa = xr;     % Update the lower bound to the new approximation
    end
    
    % Display the current approximation of the root for each iteration
    fprintf("Iteration (%d), Approximate root value (xr): %.4f \n", i, xr);
end
