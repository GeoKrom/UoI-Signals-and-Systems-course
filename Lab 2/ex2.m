%% Signals and Systems Laboratory 2
%       Exercise 2
%       Continious Signals and Convolution
clear;
clc;

dt = 0.01;
t = 0:dt:10;
t_x = 2:dt:6;
t_h = 2:dt:4;
x = ones(1, length(t_x));
x(t_x <= 2 | t_x >= 6) = 0;

h = ones(1, length(t_h));
h(t_h <= 2 | t_h >=4 ) = 0; % Define the impulse response h(t)

figure(1);
clf;
plot(t_x, x, 'b-', 'LineWidth', 2);
hold on;
plot(t_h, h, 'r--', 'LineWidth', 2)
xlabel('Time (s)');
ylabel('Amplitude');
title('Continuous Signal x(t) and h(t)');
legend('x(t)', 'h(t)');
grid on;

y = conv(x,h);
t = 4:dt:(4 + (length(y)-1)*dt); % Adjust time vector for the convolved signal
figure(2);
clf;
plot(t,y,'b-', 'LineWidth', 2);
ylabel('Amplitude');
title('Convolved Signal y(t)');
grid on;

z = conv(y,h);
t = 5:dt:(5 + (length(z)-1)*dt);
figure(3);
clf;
plot(t,z,'b-', 'LineWidth', 2);
ylabel('Amplitude');
title('Convolved Signal z(t)');
grid on;