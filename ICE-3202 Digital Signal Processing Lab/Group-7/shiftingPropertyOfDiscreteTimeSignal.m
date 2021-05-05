% 3.  shifting property of discrete time signal
clc
clear all

n=0:4;
x=[0 1 2 3 3];

subplot(3,1,1);
stem(n,x);
title('Original Signal: x(n)');
xlabel('Time Period');
ylabel('Amplitude');
axis([-3 8 0 4]);

a=n-2; 
subplot(3,1,2);
stem(a,x);
title('Time shifted signal: x(n-2)');
xlabel('Time Period');
ylabel('Amplitude');
axis([-3 8 0 4]);

b=n+2; 
subplot(3,1,3);
stem(b,x);
title('Time shifted signal: x(n+2)');
xlabel('Time Period');
ylabel('Amplitude');
axis([-3 8 0 4]);