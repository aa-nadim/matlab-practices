function pulse_train (tau, pri, p_peak)
% computes duty cycle, average transmitted power, pulse energy, and pulse repetition frequency
%% Inputs:
% tau == Pulse width in seconds      example===pulse_train(0.000000001, 0.00000001, 10000000)
% pri == Pulse repetition interval in seconds
% p_peak == Peak power in Watts
%% Outputs:
% dt == Duty cycle - unitless
% prf == Pulse repetition frequency in Hz
% pa == Average power in Watts
% ep == Pulse energy in Joules
% ru == Unambiguous range in Km
%
c = 3e8; % speed of light
dt = tau / pri;
disp(['Duty Cycle=',num2str(dt)]);
prf = 1. / pri;
disp(['PRF=',num2str(prf),'Hz']);
pav = p_peak * dt;
disp(['PAV=',num2str(pav),'Watts']);
ep = p_peak * tau;
disp(['Energy=',num2str(ep),'Joules']);
ru = 1.e-3 * c * pri /2.0;
disp(['R=',num2str(ru),'km']);
return