%% Signal and Systems Laboratory 5
%           Exercise 1
%           First Order Filter - Image Processing


% Σήμα εισόδου
x = [5 6 7 6 5 4 4 10 9 10 6 6 5 4 3];

N = length(x);
y = zeros(1, N);

% Αρχική συνθήκη
y(1) = 0;

% Φίλτρο διαφορών πρώτης τάξης
for n = 2:N
    y(n) = x(n) - x(n-1);
end

% Σχεδίαση
n = 1:N;

figure(1);
subplot(2,1,1);
stem(n, x, 'filled');
grid on;
xlabel('n');
ylabel('x[n]');
title('Αρχικό σήμα x[n]');

subplot(2,1,2);
stem(n, y, 'filled');
grid on;
xlabel('n');
ylabel('y[n]');
title('Έξοδος φίλτρου διαφορών πρώτης τάξης');

%% Image Processing
X = imread('lena.tiff');
figure(2); imshow(X);
title('Αρχική έγχρωμη εικόνα');

X = double(rgb2gray(X));
figure(3); imshow(X, []);
title('Εικόνα επιπέδων του γκρι');

[R, C] = size(X);
Y = zeros(R, C);

for i = 1:R
    Y(i,1) = 0;   % αρχικό στοιχείο κάθε γραμμής
    for j = 2:C
        Y(i,j) = X(i,j) - X(i,j-1);
    end
end

Z = zeros(R, C);

for j = 1:C
    Z(1,j) = 0;   % αρχικό στοιχείο κάθε στήλης
    for i = 2:R
        Z(i,j) = X(i,j) - X(i-1,j);
    end
end

G = zeros(R, C);

for i = 1:R
    for j = 1:C
        G(i,j) = sqrt(Y(i,j)^2 + Z(i,j)^2);
    end
end

figure(4);
subplot(1,2,1);
imshow(X, []);
title('Εικόνα επιπέδων του γκρι');

subplot(1,2,2);
imshow(G, []);
title('Εικόνα ακμών (μέτρο κλίσης)');