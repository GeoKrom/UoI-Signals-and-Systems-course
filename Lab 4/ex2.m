%% Signals and Systems Laboratory 4
%           Exercise 2
%           Symbolic Plotting

clear;
clc;

syms t;
x1 = heaviside(t-2) - heaviside(t-5);

ezplot(x1,[0, 6],1);


x2 = exp(-t)*heaviside(t);
y1 = exp(t)*heaviside(-t);
y2 = exp(1-t)*heaviside(1-t);

figure(2);
clf;
subplot(3,1,1);
ezplot(x2,[-4 4]);
ylim([-1 1]);
xlabel('time (sec)');
ylabel('x_2(t)');

subplot(3,1,2);
ezplot(y1,[-4 4]);
ylim([-1 1]);
xlabel('time (sec)');
ylabel('y_1(t)');

subplot(3,1,3);
ezplot(y2, [-4 4]);
ylim([-1 1]);
xlabel('time (sec)');
ylabel('y_2(t)');