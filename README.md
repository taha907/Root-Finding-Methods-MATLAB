Root-Finding Algorithms Using MATLAB

This repository contains MATLAB implementations of closed root-finding methods for solving nonlinear equations. Root-finding is a fundamental topic in numerical analysis and is widely used in scientific and engineering applications to find values of  for which .
Why Use MATLAB for Root Finding?

Efficient computation: MATLAB is optimized for matrix and numerical operations.
Visualization tools: Functions can be plotted easily to visualize root behavior.
Educational clarity: MATLAB code is readable and often used in engineering education.
Built-in support: MATLAB provides flexibility and tools to implement and test various numerical algorithms quickly.

Algorithms Implemented
This repository demonstrates three common closed/bracketing methods:

1. Bisection Method (Binary Search)
Description:
Relies on the Intermediate Value Theorem.
Requires two initial guesses ( and ) such that .
The root is repeatedly approximated by taking the midpoint of the interval.

Algorithm Steps:
Compute midpoint 
Check the sign of 
Update interval accordingly (either  or )
Repeat until desired accuracy is reached

Example Script: bisection_example.m
Example Problem:
Find the root of the function  in the interval [1, 2].

```matlab
f = @(x) x.^3 + 4 * x.^2 -10;
xa = 1;
xu = 2;
for i=1:10
    xr = (xa + xu)/2;
    if f(xa)*f(xr) < 0
        xu = xr;
    else
        xa = xr;
    end
    fprintf("Iteration %d: xr = %.4f\n", i, xr);
end
```

2. Incremental Search Method (Step Reduction)

Description:
Scans the domain by increasing  in small steps.
When a sign change is detected between two consecutive evaluations, the algorithm identifies a root in that interval.
Step size is reduced to refine the estimate.

Algorithm Steps:
Choose an initial point and step size 
Incrementally evaluate  at  and 
If sign change detected, reduce  and repeat

Example Script: incremental_search_example.m
Example Problem:
Find a root of  starting from .

```matlab
f = @(x) x.^3 + 4*x.^2 - 10;
x = 1;
h = 0.1;
for i = 1:10
    if f(x)*f(x+h) < 0
        h = h/10;
    else
        x = x + h;
    end
    fprintf("Iteration %d: x = %.6f\n", i, x);
end
```

3. Regula Falsi (False Position Method)

Description:
Combines the Bisection method with linear interpolation.
Assumes function between two points is linear.
Uses the x-intercept of the secant line as the next approximation.

Algorithm Steps:
Compute 
Update  or  depending on sign of 
Repeat until convergence

Example Script: regula_falsi_example.m
Example Problem:
Find the root of  in the interval [1, 2] using Regula Falsi.

```matlab
f = @(x) x.^3 + 4 * x.^2 -10;
xa = 1;
xu = 2;
for i = 1:10
    xr = xu - ((f(xu)*(xa-xu))/(f(xa) - f(xu)));
    if f(xu)*f(xr) < 0
        xa = xr;
    end
    fprintf("Iteration (%d), xr = %.4f\n", i, xr);
end
```
How to Run the Scripts
Clone or download this repository.
Open one of the example scripts in MATLAB.
Modify the function f(x) and initial values as needed.
Run the script to observe the iterations and root approximations.
