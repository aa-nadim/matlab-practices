% generate sinusoidal signal
clc
clear all

x=0:0.1:2*pi;
y=sin(x);

plot(x,y);
title('Sine Wave')
xlabel('Time Period');
ylabel('Amplitude');

