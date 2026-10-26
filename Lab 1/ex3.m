%% Signals and Systems Laboratory 1
%           Exercise 3
%           Polynomials
clc;
clear;

%% Polynomial p(x) = 2x^3 - 5x^2 + 4x - 7

a = [2 -5 4 -7];
% Evaluate the roots of the polynomial
rootsP = roots(a);
disp("The roots of the polynomial are");
disp("");
disp(rootsP);

%% Polynomial r(x) = 3x^2 + 2x - 6

a = [3 2 -6];
% Evaluate the roots of the polynomial
rootsR = roots(a);
disp("The roots of the polynomial are");
disp("");
disp(rootsR);


%% Polynomial q(x) = 4x^4 - x^3 + x^2 + 1

a = [4 -1 1 0 1];
% Evaluate the roots of the polynomial
rootsQ = roots(a);
disp("The roots of the polynomial are");
disp("");
disp(rootsQ);

%% Polynomial z(x) = -x^6 + x - 2

a = [-1 0 0 0 0 1 -2];
% Evaluate the roots of the polynomial
rootsZ = roots(a);
disp("The roots of the polynomial are");
disp("");
disp(rootsZ);