function G = Gamma (d,k,a)
NUM = 0;
DEN = 0;
for n = 0:99 % Number of modes
kzn = (pi/a) * (1 + 2*n);
kxn = sqrt(k^2 - kzn^2);
NUM = NUM + exp(-1j*kxn*d)/kxn;
DEN = DEN + kxn^(-1);
G = - (NUM / DEN);
end