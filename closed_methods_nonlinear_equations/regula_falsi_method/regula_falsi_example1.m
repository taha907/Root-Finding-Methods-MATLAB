% f(x) = x^3 + 4*x^2 - 10; Function for root-finding
f = @(x) x.^3 + 4 * x.^2 -10;

% Initial guesses for the root
xa = 1;    % Lower bound
xu = 2;    % Upper bound

% Iterative process to refine root approximation
for i = 1:2
    % Calculate new root approximation using Regula Falsi formula
    xr = xu - ((f(xu)*(xa-xu))/(f(xa) - f(xu)));
    
    % Update lower bound if the root is between xa and xr
    if f(xu) * f(xr) < 0
        xa = xr;
    end
    
    % Display the current root approximation
    fprintf("Iteration (%d), Approximate root (xr): %.4f \n", i, xr);
end
