m1 = input('Enter modulation index value');
fm = input('frequency of message signal');
fc = input('frequency of carrier signal');
t = 0 : 0.0001 : 0.1 ;
m = sin(2*pi*fm*t);
c = sin(2*pi*fc*t);
y = sin(2*pi*fc*t+(m1.*sin(2*pi*fm*t)));
 
subplot(3,1,1);
plot(t,m);
title('Message signal m');
xlabel('...time...');
ylabel('...amplitude...');
grid on;
 
subplot(3,1,2);
plot(t,c);
title('Carrier signal c');
xlabel('...time...');
ylabel('...amplitude...');
grid on;
 
subplot(3,1,3);
plot(t,y);
title('Modulated signal m');
xlabel('...time...');
ylabel('...amplitude...');
grid on;
