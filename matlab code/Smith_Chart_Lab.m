function Smith_Chart_Lab(Z0, ZL1, l)
sm1=smithchart;

%f0=3e9;
ZL=(ZL1/Z0);  % ZL=Normalized 

gamma_L=(ZL1-Z0)/(ZL1+Z0); 



RC=abs(gamma_L)
ang=angle(gamma_L)*180/pi
SWR = (1 + RC)/(1 - RC + eps) 
rloss = -20 * log10(RC + eps) 


if imag(ZL1)<0  % ZL1=load
sign1='-';
else
    sign1='+';
end


hold all;
plot(real(gamma_L),imag(gamma_L),'ro','LineWidth',1.5);
str1=['ZL =' num2str(real(ZL1)) sign1 'j' num2str(abs(imag(ZL1))) ' \rightarrow'];
text(real(gamma_L),imag(gamma_L)+.01,str1,'Color','blue','FontSize',20,'HorizontalAlignment','right','VerticalAlignment','middle');

% Zload = 50+j76
% str1="50+j76 ->"  


%circle......................

 amp = read(rfckt.amplifier,'default.s2p');
 fc = 1.9e9;
 circle(amp,fc,'Gamma',abs(gamma_L),sm1);
 
%...................
 

%through a line between two point
 a=angle(gamma_L);
 plot([0 cos(a)],[0 sin(a)],'Color',[0 0.7 0],'LineWidth',1);
%......................................
 


 len=2*pi*l;
 Zin_1=ZL1+j*Z0*tan(len);
 Zin_2=Z0+j*ZL1*tan(len);
 %Zin=Zin_1/Zin_2;
 Zin=Z0*(Zin_1/Zin_2);

 
gamma_L=(Zin-Z0)/(Zin+Z0); 
hold all;

plot(real(gamma_L),imag(gamma_L),'ro','LineWidth',1.5);

if imag(Zin)<0
sign1='-';
else
    sign1='+';
end
% through line
a=angle(gamma_L);
plot([0 cos(a)],[0 sin(a)],'Color',[0 0.7 0],'LineWidth',1);
%................................................



str1=['Zin =' num2str(real(Zin_1/Zin_2)) sign1 'j' num2str(abs(imag(Zin_1/Zin_2))) ' \rightarrow'];
text(real(gamma_L),imag(gamma_L)+.01,str1,'Color','blue','FontSize',20,'HorizontalAlignment','right','VerticalAlignment','middle');

end
%   example=== Smith_Chart_Lab(50,30+j*25,0.134)

