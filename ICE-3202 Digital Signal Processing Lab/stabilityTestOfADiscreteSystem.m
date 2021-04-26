% Stability Test of Discrete Systems 
clc
clear all
N=40;
num = [1 -1 1 0];
den = [2 1 -1 -1];
n = 0:N-1;
x =(n==0);
y = filter(num,den,x);
stem(n,y);


% For a discrete-time LTI(Linear time-invariant) system,
% a system is stable if and only if its Impulse Response is absolutely
% summable(exists and finite).