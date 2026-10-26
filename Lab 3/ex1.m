%% Signals and Systems Laboratory 3
%           Exercise 1
%           Discrete Signals

clear;
clc;

n = 0:50;   % Sample points
Ts = 1;     % Nyquist Period 
Tx = 20;
Th = 10;

x = sin(2*pi/Tx*n*Ts);      % omega = 2*pi/Tx | x[n] = x(tn) = x(nTs)
h = cos(2*pi/Th*n*Ts);      % omega = 2*pi/Th | h[n] = h(tn) = h(nTs)
y = x + h;

figure(1);
clf;
subplot(3,1,1);
stem(n,x,"filled");
title("Discrete Signal x[n]");
xlabel('n (Sample Index)');
ylabel('x[n]');
grid on;

subplot(3,1,2);
stem(n,h,"filled");
title("Discrete Signal h[n]");
xlabel('n (Sample Index)');
ylabel('h[n]');
grid on;

subplot(3,1,3);
stem(n,y,"filled");
title("Discrete Signal y[n]");
xlabel('n (Sample Index)');
ylabel('y[n]');
grid on;