%% Signals and Systems Laboratory 1
%           Exercise 1
%           Second order equation solver
clc;
clear;
%% Polynomial 3x^2 + 2x - 6 = 0
a1 = 3;
b1 = 2;
c1 = -6;

D1 = b1^2 - 4*a1*c1;

x1_1 = (-b1 + sqrt(D1))/(2*a1);
x1_2 = (-b1 - sqrt(D1))/(2*a1);

disp("The roots of the polynomial are:");
disp("");
disp(x1_1 +","+ x1_2);
disp("");
disp("");
%% Polynomial 2x^2 + 5x + 4 = 0
a2 = 2;
b2 = 5;
c2 = 4;

D2 = b2^2 - 4*a2*c2;

x2_1 = (-b2 + sqrt(D2))/(2*a2);
x2_2 = (-b2 - sqrt(D2))/(2*a2);

disp("The roots of the polynomial are:");
disp("");
disp(x2_1 +","+ x2_2);
disp("");
disp("");