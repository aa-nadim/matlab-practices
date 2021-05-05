%Unit Ramp Signal
N = 10; 
n = -N:N;
%Y = (n>=0).*n;
Y = [zeros(1,N), 0, (1:N)];
%u = [zeros(1,N), 1, ones(1,N)];
%Y = n.*u; % using unit stem signal, ramp signal = step signal * n
stem(n,Y);
axis([-15, 15 0, 15]);

