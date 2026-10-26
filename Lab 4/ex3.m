%% Signals and Systems Laboratory 4
%           Exercise 3
%           Fourier Series

clear;
clc;

%% Ερώτημα Α
T = 1;
dt = 0.001;
t = 0:dt:1;
x = zeros(size(t));

% Ορισμός του σήματος
x(t > 0 & t < 0.5)  = 1;
x(t > 0.5 & t < 1)  = -1;

%% Ερώτημα Β
% Δείκτες Fourier
k = -50:50;

% Αρχικοποίηση πίνακα συντελεστών
X = zeros(size(k));

% Υπολογισμός συντελεστών
for i = 1:length(k)
    if k(i) ~= 0
        X(i) = (1./(1j*pi*k(i))) * (1 - exp(-1j*pi*k(i)));
    else
        X(i) = 0;   % X_0 = 0
    end
end

figure(1);
stem(k, abs(X), 'filled');
grid on;
xlabel('k');
ylabel('|X_k|');
title('Μέτρο συντελεστών Fourier');
ylim([0 0.7]);

figure(2);
stem(k, angle(X), 'filled');
grid on;
xlabel('k');
ylabel('∠X_k (rad)');
title('Φάση συντελεστών Fourier');
ylim([-pi pi]);

%% Ερώτημα Γ
P_total = sum(abs(X).^2);
disp(P_total);
K_vals = [1 3 5 10 20 50];
power_ratio = zeros(size(K_vals));

for i = 1:length(K_vals)
    K = K_vals(i);
    idx = (k >= -K & k <= K);
    power_ratio(i) = sum(abs(X(idx)).^2);
end

% Εμφάνιση αποτελεσμάτων
table(K_vals.', power_ratio.', ...
    'VariableNames', {'K', 'Ποσοστό_Ισχύος'})

