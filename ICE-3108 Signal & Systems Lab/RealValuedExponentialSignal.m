% 6. Real Valued Exponential signal 

n=-8:8;
A=2;
a=1.2;

x=A.*(a.^n);
stem(n,x);

xlabel('Time');
ylabel('Amplitude');
title('Real Valued Exponential Signal');
