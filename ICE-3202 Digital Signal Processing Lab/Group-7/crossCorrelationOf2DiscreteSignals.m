% Cross-correlation of two Discrete Signals
clc
clear all
a = [1 1 2 2];

subplot(3,1,1);
stem(a);
title('1st Signal');
xlabel('Time Period');
ylabel('Amplitude');

b = [1 3 1];

subplot(3,1,2);
stem(b);
title('2nd Signal');
xlabel('Time Period');
ylabel('Amplitude');

y = xcorr(a,b); % Cross-correlation

subplot(3,1,3);
stem(y);
title('Cross-correlation of two signals');
xlabel('Time Period');
ylabel('Amplitude');