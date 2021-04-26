% Stability Test of Continious Systems 
clc
clear all
s = tf('s')
G = 3/(s^3+3*s^2+2*s);
G2 = feedback(G,1)
pzmap(G2)
figure
step(G2)