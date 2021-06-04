% 6. Real Valued Exponential signal 
clc
clear all

n=-8:8;
A=2;
a=1.2;

x=A.*(a.^n);
plot(n,x);

xlabel('Time');
ylabel('Amplitude');
title('Real Valued Exponential Signal');
