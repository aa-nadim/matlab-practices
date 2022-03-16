clc;
clear all;
close all;

n = -30:30;

x1_n = cos(2*pi*n);
x2_n = cos(2*pi*6*n);

num = [4 3 8];
den = [1 5];

y1 = filter(num,den,x1_n);
y2 = filter(num,den,x2_n);

a = 2;
b = -3;

x_n = (a*x1_n) + (b*x2_n);
y_n = filter(num,den,x_n);

z = (a*y1) + (b*y2);

p = y_n - z;

stem(n,p);
title('if output is zero, then Linear otherwise non-linear');
