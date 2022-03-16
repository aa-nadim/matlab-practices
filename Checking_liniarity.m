clc
clear all
close all

n=-30:30;

x1_n=cos(2*pi*0.1*n);
subplot(4,2,1);
stem(n,x1_n);
xlabel('Time scale');
ylabel('Amplitude');
title('First input');

x2_n=cos(2*pi*0.4*n);
subplot(4,2,2);
stem(n,x2_n);
xlabel('Time scale');
ylabel('Amplitude');
title('Second input');

num=[2.2403 2.4908 2.2403];
den=[1 -0.4 0.75];

y1=filter(num,den,x1_n);
subplot(4,2,3);
stem(n,y1);
xlabel('Time scale');
ylabel('Amplitude');
title('Output for First input');

y2=filter(num,den,x2_n);
subplot(4,2,4);
stem(n,y2);
xlabel('Time scale');
ylabel('Amplitide');
title('Output for second input');

x_n=2*x1_n-3*n;
y3_n=filter(num,den,x_n);
subplot(4,2,5);
stem(n,y3_n);
xlabel('Time scale');
ylabel('Amplitude');
title('System Output for 2*first input-3*second input');

y4_n=2*y1-3*y2;
subplot(4,2,6);
stem(n,y4_n);
xlabel('Time scale');
ylabel('Amplitude');
title('plot for 2*(first output)-3*(second output)');

z=y3_n-y4_n;
subplot(4,2,7);
stem(n,z);
xlabel('Time scale');
ylabel('Amplitude');
title('Verification of linearity');