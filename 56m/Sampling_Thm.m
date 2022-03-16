clc;
close all;
clear all;

t=-10:0.01:10;
T=8;
fm=1/T;

x=cos(2*pi*fm*t);
subplot(2, 2, 1);
plot(t,x);
xlabel('time in seconds');
ylabel('x(t)');
title('continous time signal');

fs1=1.2*fm;
fs2=2*fm;
fs3=8*fm;

n1=-4:1:4;
xn1=cos(2*pi*n1*fm/fs1);
subplot(2, 2, 2);
stem(n1,xn1);
hold on;
plot(n1,xn1);
xlabel('n');
ylabel('x(n)');
title('discrete time signal with fs<2fm');

n2=-5:1:5;
xn2=cos(2*pi*n2* 2);
subplot(2, 2, 3);
stem(n2,xn2);
hold on;
plot(n2,xn2);
xlabel('n');
ylabel('x(n)');
title('discrete time signal with fs=2fm');

n3=-20:1:20;
xn3=cos(2*pi*n3*fm/fs3);
subplot(2, 2, 4);
stem(n3,xn3);
hold on;
plot(n3,xn3);
xlabel('n');
ylabel('x(n)');
title('discrete time signal with fs>2fm');