clc;
clear all;
close all;

xn = input('Enter a signal=');
xn=xn.';
[N] = length(xn);
n = 0: N-1;
for k=0:N-1
    xk(k+1) =  exp(-j*2*pi*k*n/N)*xn;
end
disp('X(k)=');
disp(xk);
stem(n, xk);


