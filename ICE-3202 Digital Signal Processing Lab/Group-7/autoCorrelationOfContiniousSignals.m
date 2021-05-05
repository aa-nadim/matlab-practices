% 5.  Auto-correlation of two Continious Signals
clc
clear all
t = 0:0.001:0.1;
f = 50;     % frequency
t1 = 2*pi*f*t; 	%We know that, sin(wt); w=2*pi*T;

x = sin(t1);
subplot(2,1,1);
plot(t,x);
title('Sine Wave')
xlabel('Time Period');
ylabel('Amplitude');


y = xcorr(x,x); % Auto-correlation
subplot(2,1,2);
plot(y);
title('Auto-correlation of two signals');
xlabel('Time Period');
ylabel('Amplitude');