clc;
%n=input('Enter bit sequence: %d',n[i]);
%n=[0 0 0 1 0 1 0 1];
N=4;
disp('enter the binary: ');
for a=1:N
    n(a)=input(['' ]);
    a=a+1;
end
for i=1:length(n)
    if n(i)==1
        n(i)=8;
    else n(i)=-8;
    end
end
y=0;
i=1;
a=0;
b=0.5;
t=0:0.001:length(n);
for j=1:length(t)
    if t(j)>=a && t(j)<=b
        y(j) = n(i);
    else if t(j)>=b && t(j)<=i
            y(j)=0;
        else i=i+1;
           a=a+1;
           b=b+1;
        end
    end
end
plot(t,y);
axis([0 length(n) -10 10]);
title('polar RZ wave'); 
xlabel('...time...');
ylabel('..amplitude..');
grid on;`