% Auto-correlation of two Discrete Signals
clc
clear all
x = [1 2 3 3];

subplot(2,1,1);
stem(x);
title('Original Signal');
xlabel('Time Period');
ylabel('Amplitude');


y = xcorr(x,x); % Auto-correlation

subplot(2,1,2);
stem(y);
title('Auto-correlation of two signals');
xlabel('Time Period');
ylabel('Amplitude');