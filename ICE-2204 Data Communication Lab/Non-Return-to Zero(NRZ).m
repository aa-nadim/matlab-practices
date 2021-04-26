n=[1,0,1,0,1,1,1,0]
%mapping
for i1=1:length(n)
    if n(i1)==1;
        nn(i1)=3;
    else
        nn(i1)=0;
    end
end 
i=1;
t=0:0.001:length(n);
for j=1:length(t)
    if t(j)<=i
        y(j)=nn(i);
    else
        y(j)=nn(i);
        i=i+1;
    end
end
%plotting
stairs(t,y);
grid;
%plot(t,y,'-r');
ylim([-5 5]);
xlabel('Time');
ylabel('Amplitude');
title('Unipolar NRZ');
