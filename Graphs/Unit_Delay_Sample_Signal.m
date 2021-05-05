%Unit Delay Sample Signal ( HAVE TO KNOW MORE )
n=0:4;
x=[0 1 2 3 3];
subplot(2,1,1);
stem(n,x);
xlabel('Time Sample');
ylabel('Amplitude');
title('Original sequence');
axis([-2 8 0 4]);

m=n-2;
subplot(2,1,2);
stem(m,x);
xlabel('Time Sample');
ylabel('Amplitude');
title('Time shifted signal');
axis([-2 8 0 4]);
