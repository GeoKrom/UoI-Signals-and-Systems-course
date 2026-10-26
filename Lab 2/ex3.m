%% Signals and Systems Laboratory 2
%       Exercise 3
%       Continious Signals
clear;
clc;

dt = 0.01;
t = -4:dt:4;
x = sin(pi*t);
x1 = sin(pi*(t - 0.25));
x2 = sin(pi*(t + 0.25));
x3 = sin(pi*(2*t));
x4 = sin(pi*(0.5*t));

figure(1);
clf;
subplot(3,1,1);
plot(t,x,'r-');
xlabel('time (sec)');
ylabel('Amplitude');
title('Sine Wave');
grid on;

subplot(3,1,2);
plot(t,x1,'r-');
xlabel('time (sec)');
ylabel('Amplitude');
title('Sine Wave');
grid on;

subplot(3,1,3);
plot(t,x2,'r-');
xlabel('time (sec)');
ylabel('Amplitude');
title('Sine Wave');
grid on;

figure(2);
clf;
subplot(3,1,1);
plot(t,x,'r-');
xlabel('time (sec)');
ylabel('Amplitude');
title('Sine Wave');
grid on;

subplot(3,1,2);
plot(t,x3,'r-');
xlabel('time (sec)');
ylabel('Amplitude');
title('Sine Wave');
grid on;

subplot(3,1,3);
plot(t,x4,'r-');
xlabel('time (sec)');
ylabel('Amplitude');
title('Sine Wave');
grid on;