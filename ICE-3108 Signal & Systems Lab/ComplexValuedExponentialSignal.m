% 7.  Complex Valued Exponential Signal 

n=0:100;
a=2;
c=(-1/12)+j*(pi/6);
y=a*exp(-c*n);

ry=real(y);
subplot(2,1,1);
plot(n,ry);
%stem(n,ry);

iy=imag(y);
subplot(2,1,2);
plot(n,iy);
