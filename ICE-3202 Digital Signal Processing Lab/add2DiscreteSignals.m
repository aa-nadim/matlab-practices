% ADD two Discrete Signals
clc
clear all
t = 0:1:6
a = [1 2 -3 4 1 2 3];

subplot(3,1,1)
stem(t,a)
title('input a(n)')

b = [1 -1 1 0 1 1 -1];
subplot(3,1,2)
stem(t,b)
title('input b(n)')

y = a+b;
subplot(3,1,3)
stem(t,y)
title('input y(n)')