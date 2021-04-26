t = 0:0.01:3;                 
fc = 10;                   
m = sin(2*pi*t);
kp  = pi/2;                 % phase deviation constant
carrier = cos(2*pi*fc*t);
modulated = cos(2*pi*fc*t + kp*m);
subplot (3,1,1);
plot (t,m);
axis([0 3 -1.5 1.5]);
xlabel('Time(seconds)');
ylabel('Amplitude(volt)');
title('Message');
grid on;
subplot (3,1,2);
plot (t,carrier);
axis([0 3 -1.5 1.5]);
xlabel('Time(seconds)');
ylabel('Amplitude(volt)');
title('Carrier Signal');
grid on;
 
subplot (3,1,3);
plot (t,modulated);
axis([0 3 -1.5 1.5]);
xlabel('Time(seconds)');
ylabel('Amplitude(volt)');
title('Modulated Signal');
grid on;
