% 5. Unit Delay Ramp Signal 

n=-8:8;
x=(n-2).*(n-2>=0);
stem(n,x);

xlabel('Time');
ylabel('Amplitude');
title('Unit Ramp Signal');
