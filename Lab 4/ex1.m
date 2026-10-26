%% Signals and Systems Laboratory 4
%           Exercise 1
%           Fourier Transformation

syms t w
x1 = exp(-2*abs(t));
X1 = fourier(x1, t, w);
disp("");
disp("The fourier transformation of x1 is");
disp("");
disp(X1);

x2 = 1/(1 + t^2);
X2 = fourier(x2, t, w);
disp("");
disp("The fourier transformation of x2 is");
disp("");
disp(X2);

x3 = exp(-t^2/8);
X3 = fourier(x3, t, w);
disp("");
disp("The fourier transformation of x3 is");
disp("");
disp(X3);

x4 = exp(-2*t)*heaviside(t);
X4 = fourier(x4, t, w);
disp("");
disp("The fourier transformation of x4 is");
disp("");
disp(X4);