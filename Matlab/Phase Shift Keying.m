fc=input('Enter frequency of Carrier Sine wave: ');
fm=input('Enter Message frequency : ');
amp=input('Enter Carrier & Message Amplitude(Assuming Both Equal):');
c=amp.*sin(2*pi*fc*t);% Generating Carrier Sine
subplot(3,1,1) %For Plotting The Carrier wave
plot(t,c)
xlabel('Time')
ylabel('Amplitude')
title('Carrier')
m=square(2*pi*fm*t);% For Plotting Message signal
subplot(3,1,2)
plot(t,m)
xlabel('time')
ylabel('ampmplitude')
title('Message Signal')% Sine wave multiplied with square wave in order to generate PSK
x=c.*m;
subplot(3,1,3) % For Plotting PSK (Phase Shift Keyed) signal
plot(t,x)
xlabel('t')
ylabel('y')
title('PSK')
