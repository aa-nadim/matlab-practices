% 6.  Cross-correlation of two Continious Signals
clc
clear all
t = 0:0.001:0.1;
f = 50;     % frequency
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

y = xcorr(x1,x2); % Cross-correlation
subplot(3,1,3);
plot(y);
title('Cross-correlation of two signals');
xlabel('Time Period');
ylabel('Amplitude');