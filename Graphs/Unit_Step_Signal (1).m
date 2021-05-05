%Unit Step Signal
N = 10;
n = -N:N;
Y = [zeros(1,N), 1, ones(1,N)];
stem(n,Y);
axis([-12 12 -2, 2]);
