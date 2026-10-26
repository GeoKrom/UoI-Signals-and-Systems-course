%% Signals and Systems Laboratory 1
%           Exercise 5
%           Logical operators in vectors and signals
clc;
clear;

%% Logical operators
x = [-2.5 6.23 7.98 -3.462 1.021 -9.12 -6.92];

% Determine which elements of x are positive
positiveElements = x > 0;
disp("Postions of positive elements");
disp("");
disp(positiveElements);
% Extract the positive elements from x
positiveValues = x(positiveElements);
disp("x(x>0)");
disp("");
disp(positiveValues);
% Determine which elements of x are negative
negativeElements = x < 0;
disp("Postions of negative elements");
disp("");
disp(negativeElements);
% Extract the negative elements from x
negativeValues = x(negativeElements);
disp("x(x<0)");
disp("");
disp(negativeValues);

%% Multiple signal
N = 200;

t1 = linspace(0,20,N);
t2 = linspace(20,80,N);
t3 = linspace(80,200,N);
t = [t1 t2 t3];
g1 = -5.*ones(1,length(t1));
g2 = (t2/4).*cos(2*pi*t2/10);
g3 = 36 - t3/5;

g = [g1 g2 g3];

figure(1);
clf;
plot(t, g);
xlabel('Time (sec)');
ylabel('Signal Amplitude');
title('Combined Signal g(t)');
grid on;