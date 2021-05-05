% 8. Sinusoidal Signal 

n=-1:1/100:1;
f=1;
x=sin(2*pi*f*n);
stem(n,x);

xlabel('Time');
ylabel('Amplitude');
title('Sinusoidal Signal');
