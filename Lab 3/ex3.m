%% Signals and Systems Laboratory 3
%           Exercise 3
%           Filter

clear;
clc;

n = 0:100;
N = 7;
s_n = 3*sin(pi*n/5);
e_n = randn(1, length(n));
% Generate the noisy signal
x_n = s_n + e_n;
y_n = zeros(1, length(n));

% Filter
for i = N+1:length(n)
    for k = 1:N
        y_n(i) = y_n(i) + (1/N)*x_n(i - k);
    end
end

figure(1);
clf;
subplot(4,1,1);
stem(n,s_n,"filled");
xlabel('n');
ylabel('s_n');
title('Original Signal');

subplot(4,1,2);
stem(n,e_n,"filled");
xlabel('n');
ylabel('e_n');
title('Gaussian Noise');

subplot(4,1,3);
stem(n,x_n,"filled");
xlabel('n');
ylabel('x_n');
title('Noisy Signal');

subplot(4,1,4);
stem(n,y_n,"filled");
xlabel('n');
ylabel('y_n');
title('Filtered Signal');

%%
N = 3;
y_n = zeros(1, length(n));
% Filter
for i = N+1:length(n)
    for k = 1:N
        y_n(i) = y_n(i) + (1/N)*x_n(i - k);
    end
end

figure(2);
clf;
subplot(4,1,1);
stem(n,s_n,"filled");
xlabel('n');
ylabel('s_n');
title('Original Signal');

subplot(4,1,2);
stem(n,e_n,"filled");
xlabel('n');
ylabel('e_n');
title('Gaussian Noise');

subplot(4,1,3);
stem(n,x_n,"filled");
xlabel('n');
ylabel('x_n');
title('Noisy Signal');

subplot(4,1,4);
stem(n,y_n,"filled");
xlabel('n');
ylabel('y_n');
title('Filtered Signal');

% Όσο πιο μικρό είναι το μήκος του παραθύρου 
% τόσο καλύτερη προσέγγιση έχουμε προς το πραγματικό σήμα.