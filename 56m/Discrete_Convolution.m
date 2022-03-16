clc
clear all
close all
%x=[1 2 1 -1];
%h=[1 2 3 4];
x=input('enter the value x:');
h=input('enter the h:');
%nx=(-1:1:2);
%nh=(0:1:3);
nx=0:length(x)-1;
nh = 0: length(h)-1;
y=conv(x,h);
ny=(0:length(y)-1);

subplot(3,1,1);
stem(nx,x);
xlabel('n');
ylabel('x[n]');
title('input signal');

subplot(3,1,2);
stem(nh,h);
xlabel('n');
ylabel('h[n]');
title('impulse response');

subplot(3,1,3);
stem(ny,y);
xlabel('n');
ylabel('y[n]');
title('output signal');