x=[ 0 1 0 0 1 1 0 0 0 1 1 ];
T=length(x);
n=200;
N=n*T;
dt=T/N;
pulse=-1;
t=0:dt:T;
y=zeros(1,length(t));
  for i=0:T-1;
    if x(i+1)==1
        if pulse==1
            pulse=-1;
            y((i*n)+1 : (i+1)*n)=pulse;
        else
            pulse=1;
            y((i*n)+1 : (i+1)*n)=pulse;
        end;
    else
        y((i*n)+1 : (i+1)*n)=pulse;
    end;
  end;
  plot(t,y);
  axis([0 11, -2 2]);
 
  title('NRZ-I');
  xlabel('Time (s)')   ;     
   ylabel('Amplitude (V)');
