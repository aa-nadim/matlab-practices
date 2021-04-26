x=[ 0 1 0 0 1 1 0 0 0 1 1 ];
T=length(x); n=10000;       
N=n*T;       
dt=T/N;      
t=0:dt:T;
y=zeros(1,length(t));
for i=0:T-1;
    if x(i+1)==1
        y(i*n+1 : (i+1)*n)=-1;
       
    else
         y(i*n+1 : (i+1)*n)=1;
        
    end;
end;
plot(t,y);
axis([0 11 , -2 2]);
title('NRZ-L');
xlabel('Time (s)')            
ylabel('Amplitude (V)')
