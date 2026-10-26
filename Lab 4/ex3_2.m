%% Signals and Systems Laboratory 4
%           Exercise 3
%           Fourier Series

clear;
clc;

%% Ερώτημα Δ

% Χρονικός άξονας
dt = 0.001;
t = 0:dt:1;

% Αρχικό σήμα
x = zeros(size(t));
x(t > 0 & t < 0.5) = 1;
x(t > 0.5 & t < 1) = -1;

% Δείκτες Fourier
k = -50:50;

% Συντελεστές Fourier (από προηγούμενο ερώτημα)
X = zeros(size(k));
for i = 1:length(k)
    if k(i) ~= 0
        X(i) = (1/(1j*pi*k(i))) * (1 - exp(-1j*pi*k(i)));
    end
end

% Ολική ισχύς (θεωρητικά ίση με 1)
P_total = 1;
N_vals = [1 3 5 10 20 50];
figure(3);
for n = 1:length(N_vals)

    N = N_vals(n);

    % Επιλογή όρων -N έως N
    idx = (k >= -N & k <= N);

    % Υπολογισμός προσεγγιστικού σήματος
    xN = zeros(size(t));
    for i = find(idx)
        xN = xN + X(i) * exp(1j*2*pi*k(i)*t);
    end
    xN = real(xN);   % το σήμα είναι πραγματικό

    % Ποσοστό ισχύος
    P_N = sum(abs(X(idx)).^2);
    power_percent = 100 * P_N / P_total;

    % Σχεδίαση
    
    subplot(length(N_vals),1,n);
    plot(t, x, 'k', 'LineWidth', 2); hold on;
    plot(t, xN, 'r', 'LineWidth', 1.5);
    grid on;
    xlabel('t');
    ylabel('Amplitude');
    title(['Προσέγγιση Fourier με N = ', num2str(N), ...
           ', Διατηρούμενη ισχύς = ', sprintf('%.2f', power_percent), '%']);
    ylim([-1.5 1.5]);
    legend('x(t)', 'x_N(t)');
end


for N = 1:50

    idx = (k >= -N & k <= N);
    xN = zeros(size(t));

    for i = find(idx)
        xN = xN + X(i) * exp(1j*2*pi*k(i)*t);
    end
    xN = real(xN);

    P_N = sum(abs(X(idx)).^2);
    power_percent = 100 * P_N / P_total;
    figure(4);
    clf;
    plot(t, x, 'k', 'LineWidth', 2); hold on;
    plot(t, xN, 'r', 'LineWidth', 1.5);
    grid on;
    xlabel('t');
    ylabel('Amplitude');
    title(['N = ', num2str(N), ...
           ' | Διατηρούμενη ισχύς = ', sprintf('%.2f', power_percent), '%']);
    ylim([-1.5 1.5]);
    legend('x(t)', 'x_N(t)');
    pause(0.1);
end