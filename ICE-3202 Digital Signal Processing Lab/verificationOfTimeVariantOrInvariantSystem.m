% verification of time variant or invariant system
clc
clear all
n = 0:40;
D = 10;
a = 3.0;
b = -2;
x = a*cos(2*pi*0.1*n) + b*cos(2*pi*0.4*n);
xd = [zeros(1,D) x];
num = [2.2403 2.4908 2.2403];
den = [1 -0.4 0.75];
ic = [0 0] % set initial conditions
% compute the output y(n)
y = filter(num,den,x,ic)
% Compute the difference output yd(n)
yd = filter(num,den,xd,ic)

% Compute the difference output d(n)
d = y-yd(1+D:41+D);
%Plot the outputs
subplot(3,1,1)
stem(n,y);
xlabel('Output y[n]');
ylabel('Amplitude');grid;

subplot(3,1,2)
stem(n,yd(1:41));
ylabel('Amplitude');
title(['Output Due to Delayed input x[n ,num2atr(D)']);grid;
subplot(3,1,3)
stem(n,d);
xlabel('Time index n');
ylabel('Amplitude');
title(['Difference Signal']);
grid on