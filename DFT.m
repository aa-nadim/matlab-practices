clc; clear all; close all; %Get the sequence from user disp('The sequence from the user:'); xn=input('Enter the input sequence x(n):');
 
% To find the length of the sequence N=length(xn);
 
%To initilise an array of same size as that of input sequence Xk=zeros(1,N); iXk=zeros(1,N);
 
%code block to find the DFT of the sequence for k=0:N-1    for n=0:N-1        Xk(k+1)=Xk(k+1)+(xn(n+1)*exp((i)*2*pi*k*n/N));    end end
 

%code block to plot the input sequence t=0:N-1; subplot(3,2,1); stem(t,xn); ylabel ('Amplitude'); xlabel ('Time Index'); title ('Input Sequence');
 
%code block to plot the X(k) disp('The discrete fourier transform of x(n):'); disp(Xk); t=0:N-1; subplot(3,2,2); stem(t,Xk); ylabel ('Amplitude'); xlabel ('Time Index'); title ('X(k)');
 
 
% To find the magnitudes of individual DFT points magnitude=abs(Xk);
 
%code block to plot the magnitude response disp('The magnitude response of X(k):'); disp(magnitude); t=0:N-1; subplot(3,2,3); stem(t,magnitude); ylabel ('Amplitude'); xlabel ('K'); title ('Magnitude Response');
 
%To find the phases of individual DFT points phase=angle(Xk);
 
%code block to plot the phase response disp('The phase response of X(k):'); disp(phase);
77                                             UR11EC098
t=0:N-1; subplot(3,2,4); stem(t,phase); ylabel ('Phase'); xlabel ('K'); title ('Phase Response');
 