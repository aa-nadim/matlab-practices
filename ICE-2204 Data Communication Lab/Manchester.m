clear;
%Menchester polar line coding

N=4;
n=randi([0 1],1,N);
%Binary to bipolar conversion
nnn=[];
for m=1:N
    if n(m)==0
        nn=[-1 1];
    else
        nn=[1 -1];
    end
   nnn=[nnn nn];
end

%NRZ Pulse Shaping

i=1;
l=0.5;
t=0:.001:length(n);
for j=1:length(t)
    if t(j)<=1
        y(j)=nnn(i);
    else
        y(j)=nnn(i);
        i=i+1;
        l=l+0.5;   
    end
end
plot(t,y);
axis([0 N -2 2]);
grid;