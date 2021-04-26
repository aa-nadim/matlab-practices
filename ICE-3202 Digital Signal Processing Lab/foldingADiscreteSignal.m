% Folding of A Discrete Time Signal
clc
clear all
t = 0:1:6
x = [0 1 2 3 4 5 6];
subplot(3,1,1)
stem(t,x);
title('Original Signal');
xlabel('Time Period');
ylabel('Amplitude');

xFolding = fliplr(x);
subplot(3,1,2);
stem(t,xFolding);
title('Folding Signal');
xlabel('Time Period');
ylabel('Amplitude');