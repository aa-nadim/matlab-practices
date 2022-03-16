clc;
clear all;
close all;

p1= input('enter the range=');
p2= input('enter the range=');

n=p1:p2;
x = (n).*[(n)>=0];

stem(n, x);
title('Ramp Signal');