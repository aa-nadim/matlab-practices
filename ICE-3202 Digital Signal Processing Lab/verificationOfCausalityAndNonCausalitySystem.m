% verification of causality and non-causality system
clc
clear all
k=2;%delay
n=0:2+k;
x=[10 2 5 zeros(1,k)]; %x(n)
subplot(411)
stem(n,x)
xdelay=[zeros(1,k) x(1:3)]; %x(n-2)
subplot(412)
stem(n,xdelay)
y=x+n.*xdelay;  %y(n)=x(n)+n*x(n-2)
% delayed output y'(n)=x(n-k)+(n-k)*x(n-k-2)
nk=(0:length(n)-1+k)-k;
ydelayed=[xdelay zeros(1,k)]+nk.*[zeros(1,k) xdelay]  
subplot(413)
stem(0:length(ydelayed)-1,ydelayed)
n1=(0:length(n)-1+k);
ydin=[xdelay zeros(1,k)]+n1.*[zeros(1,k) xdelay]  % output due to delayed input 
subplot(414)
stem(0:length(ydin)-1,ydin)
%%ydelayed is not equal system is non causal