%Program: mode.m
a=input('Plate Height(a)=?')
fr=input('Frequency[MHz]=?')
k0=2*pi*fr/300;
xk=input('Source Height[m]=?')
xg=input('Observation Height[m]=?')
z=input('Observation Range[m]=?')
mm=input('Mode=?')
mp=0;
for m=1:mm
    beta(m)=complex(0,0);
    if(k0^2-(m*pi/a)^2)>0
        beta(m)=sqrt(k0^2-(m*pi/a)^2);
        mp=mp+1;
    else
        beta(m)=i*sqrt((m*pi/a)^2-k0^2);
    end
end

nx=100;
delx=a/(nx-1);

for n=1:nx
    xx(n)=(n-1)*delx;
    yr(n)=complex(0,0);
    for m=1:mm
        yr(n)=yr(n)+cos(m*pi*xk/a)*cos(m*pi*xg/a)*exp(i*beta(m)*(z))/(2*i*beta(m));
    end
    yr(n)=yr(n)*(2/a)+(1/a)*exp(i*k0*z)/(2*i*k0);
end

plot(abs(yr),xx);