%Unit Sample Signal
N = 20;
%N = input('Give your value = ');
n = -N:N;
%Y = [0,0,0,0,0,1,0,0,0,0,0];
Y = [zeros(1,N),1,zeros(1,N)];
subplot(2,1,1);
stem(n,Y);
axis([-22 22 -1 2]);
xlabel('Time sample');
ylabel('Amplitude');
title('Unit Sample Signal');
