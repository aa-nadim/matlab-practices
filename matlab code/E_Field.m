function E= E_Field(X,Z,a,k) % Normalization: omega*mu*Io=1 V/m
E = zeros(size(X));
for n = 0: 99 % Number of modes
kzn = (pi/a) * (1 + 2*n);
kxn = sqrt(k^2 - kzn^2);
E = E + ((-1)^n)*sin(kzn*(abs(Z)-a/2))./(kxn*a).*exp(-1j*kxn*abs(X));
end