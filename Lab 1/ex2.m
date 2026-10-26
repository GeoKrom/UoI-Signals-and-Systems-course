%% Signals and Systems Laboratory 1
%           Exercise 2
%           Vectors
clc;
clear;
a = [2 4 8];                        % row vector
b = [3 2 7];

%% Summation and Subtraction
sumResult = a + b;                % element-wise summation
subResult = a - b;                % element-wise subtraction

%% Transpose vectors
aTranspose = a';                  % transpose of vector a
bTranspose = b';                  % transpose of vector b

%% Dot Product
dotProduct = dot(a, bTranspose);   % compute the dot product of a and b

%% Element wise Dot Product
elementWiseDotProduct = a .* bTranspose;  % compute the element-wise dot product of a and b

%% Min Max of a new vector
c = [a -b];
maxC = max(c);
minC = min(c);
dimC = size(c);
%% New vectors
w = ones(20);
z = zeros(20);

%% New vector with step
stepVector = 0:0.1:100;  % create a new vector with a step of 0.1
a_new = [stepVector];

%% Display values of a vector
disp(a_new(35:50));