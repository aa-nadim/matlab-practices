% 4. Unit Ramp Signal 

n=-8:8;
x=n.*(n>=0);
stem(n,x);

xlabel('Time');
ylabel('Amplitude');
title('Unit Ramp Signal');
