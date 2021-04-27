% ADD two Continuous Signals
clc
clear all

t = 0:0.001:0.1;
f = 50;
t1 = 2*pi*f*t; 	%We know that, sin(wt); w=2*pi*T;

x1 = sin(t1);
subplot(3,1,1);
plot(t,x1);
title('Sine Wave')
xlabel('Time Period');
ylabel('Amplitude');

x2 = cos(t1);
subplot(3,1,2);
plot(t,x2);
title('Cosine Wave')
xlabel('Time Period');
ylabel('Amplitude');

y = x1+x2;
subplot(3,1,3);
plot(t,y);
title('Addition of two signals')
xlabel('Time Period');
ylabel('Amplitude');