%% Signals and Systems Laboratory 2
%       Exercise 1
%       Continious Signals
clear;
clc


%%
dt = 0.01;
t = -5:dt:5;
u1 = 0*t(t<0);
u2 = 1*t(t>=0);

u = [u1 u2];

figure(1);
clf;
plot(t,u);
title('Unit Step Function');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

%
r = t.*u;
figure(2);
clf;
plot(t, r);
title('Ramp Function');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

%
x = sin(2*pi*t);
% Plot the sine wave
figure(3);
clf;
plot(t, x);
title('Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

%
figure(4);
clf;
plot(t, u, 'b-');
hold on;
% Overlay the sine wave on the unit step function plot
plot(t, x, 'r');
plot(t, r, 'k');
legend('Unit Step Function', 'Sine Wave','Ramp Function');
hold off;
grid on;
xlabel("time (sec)");
ylabel("Amplitude");

%%

dt = 0.01;
t = 0:dt:3*pi;
x = sin(pi/4*t);
y = cos(3*pi/4*t);

figure(5);
plot(t,x,'r-');
hold on;
plot(t,y,'b-');
hold off;
grid on;
legend("Sine Wave", "Cosine Wave");
xlabel("time (sec)");
ylabel("Amplitude");

x_sum = x + y;
figure(6);
plot(t, x_sum, 'k-');
title('Sum of Sine and Cosine Waves');
xlabel('Time (sec)');
ylabel('Amplitude');
grid on;