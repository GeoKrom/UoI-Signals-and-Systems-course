%% Signals and Systems Laboratory 1
%           Exercise 4
%           Ploting Signals
clc;
clear;

Dt = 0.01;      % time step
t = -1:Dt:1;    % total time
% Define a signal, for example, a sine wave
x = 2*sin(5*pi* t);  % 5 Hz sine wave

% Plot the signal
fig1 = figure(1);
clf;
plot(t,x,'b-');
xlabel('Time (s)');
ylabel('Amplitude');
title('5 Hz Sine Wave');
grid on;
% Save the plot in your local directory
saveas(fig1,"Sine Signal","png");


%% Second Example
Dt = 0.01;      % time step
t = -5:Dt:5;    % total time
% Define a signal, for example, a sine wave
x = exp(t+2);  % Exp signal

% Plot the signal
fig2 = figure(2);
clf;
plot(t,x,'b-');
xlabel('Time (s)');
ylabel('Amplitude');
title('Expontential Signal');
grid on;
% Save the plot in your local directory
saveas(fig2,"Expontential Signal","png");


%% Third Example
Dt = 0.01;      % time step
t = -3:Dt:3;    % total time
% Define a signal, for example, a sine wave
x = cos(2*pi*t) + 3*cos(10*pi);  % Exp signal

% Plot the signal
fig3 = figure(3);
clf;
plot(t,x,'b-');
xlabel('Time (s)');
ylabel('Amplitude');
title('Cosine Signal');
grid on;
% Save the plot in your local directory
saveas(fig3,"Cosine Signal","png");

%% Fourth Example
Dt = 0.01;      % time step
t = -10:Dt:10;    % total time
% Define a signal, for example, a sine wave
x = t.^2 + 4*t + 1;  % Pol signal, element wise in pows

% Plot the signal
fig4 = figure(4);
clf;
plot(t,x,'b-');
xlabel('Time (s)');
ylabel('Amplitude');
title('Polynomial Signal');
grid on;
% Save the plot in your local directory
saveas(fig4,"Polynomial Signal","png");

%% Fifth Example
Dt = 0.01;      % time step
t = -10:Dt:10;    % total time
% Define a signal, for example, a sine wave
x = (sqrt(1-cos(t)) + sqrt(cos(t))).^2;  % Square Root Cosine signal, element wise in pows

% Plot the signal
fig5 = figure(5);
clf;
plot(t,x,'b-');
xlabel('Time (s)');
ylabel('Amplitude');
title('Square Root Cosine Signal');
grid on;
% Save the plot in your local directory
saveas(fig5,"Square Root Cosine Signal","png");