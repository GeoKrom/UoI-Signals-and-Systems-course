%% Signals and Systems Laboratory 3
%           Exercise 2
%           Nyquist Theorem

clear;
clc;

dt = 0.0001;
t = 0:dt:1;

x_c = 2*sin(8*pi*t) - cos(6*pi*t);

% Sample the continuous signal at a specific frequency
Ts = 0.05; % Sampling Period
n = 0:Ts:1; % Sample points
x_s = 2*sin(8*pi*n) - cos(6*pi*n); % Sampled signal

figure(1);
clf;
subplot(2,1,1);
plot(t,x_c,'r-');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
title('Continuous Signal');

subplot(2,1,2);
stem(n,x_s);
hold on;
plot(n, x_s, 'r-');
xlabel('Time (s)');
ylabel('Amplitude');
title('Discrete Signal');
grid on;


% Sample the continuous signal at a specific frequency
Ts = 0.2; % Sampling Period
n = 0:Ts:1; % Sample points
x_s = 2*sin(8*pi*n) - cos(6*pi*n); % Sampled signal

figure(2);
clf;
subplot(2,1,1);
plot(t,x_c,'r-');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
title('Continuous Signal');

subplot(2,1,2);
stem(n,x_s);
hold on;
plot(n, x_s, 'r-');
xlabel('Time (s)');
ylabel('Amplitude');
title('Discrete Signal');
grid on;

% Παρατηρούμε πως με την αύξηση της περιόδου δειγματοληψίας, το δεύτερο
% σήμα έχει αλλοιωθεί. Καθώς δεν ικανοποιείται η συνθήκη Nyquist.