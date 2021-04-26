fm=input('enter the message frequency :');
fc=input('enter the carrier frequency :');
A=3;
t=0:0.001:1;
m=(A.*square(2*pi*fm*t)+A)/2; %1 works for positive value,-1 works for negative value
 
c=sin(2*pi*fc*t);
s=m.*c;
subplot(3,1,1); %create 3 subplot by grid 1 and at position 1
plot(t,m);
title('Square Wave');
ylim([-1 4]);
xlabel('Time');
ylabel('Amplitude');
grid;
subplot(3,1,2);
plot(t,c);
title('Carrier Wave');
ylim([-5 5]);
xlabel('Time');
ylabel('Amplitude');
grid;
subplot(3,1,3);
plot(t,s);
title('Modulating Wave');
ylim([-5 5]);
xlabel('Time');
ylabel('Amplitude');
grid;
