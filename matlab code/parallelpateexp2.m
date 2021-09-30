f = 1e9; % Frequency
Omega = 2*pi*f; % Radial frequency
k = Omega/3e8 - 1j*1e-20; % Wavenumber in free space Im(k)=0^-
Lambda = 2*pi/real(k); % Wavelength in the medium
a = 0.54*Lambda; % Parallel-plate separation distance
kx0_Lambda = real(2*pi/sqrt(k^2-(pi/a)^2)); % Guide wavelength mode n=0
d = 0.25*kx0_Lambda; % Reflecting wire at Lambda_g/4
z = - a/2: a/100: a/2; % z-Coordinates
x = - 6*a: a/100: 6*a; % x-Coordinates
[X,Z] = ndgrid (x,z); % Generate x,z grid of points
Ei = E_Field(X,Z,a,k); % Compute incident field

G = Gamma(d,k,a); % Compute reflection coefficient Gamma
Es = G * E_Field (X+d,Z,a,k); % Compute the scattered field
E = Ei + Es; % Compute the total field
vidObj = VideoWriter('FileName.avi'); % Prepare video file
open(vidObj); % Open the video file
M = 125; % Take M frames
for m = 1: M
close all
Phase = 2*pi / M*(m-1); % Compute the phase for that frame
if m == 1 % Enter for first iteration only
 [~,h] = contourf(X,Z,abs(real(E*exp(1j*Phase)))); % Plot the field
 c = get(h,'LevelList'); % Store contour levels
 v = caxis; % Store axis settings
else
 contourf(X,Z,abs(real(E*exp(1j*Phase))),c); % Plot the field
 caxis = v; % Use the initial axis settings
end
axis equal
axis tight
axis off
xlabel('x [\lambda]')
ylabel('z [\lambda]')
set(gca,'nextplot','replacechildren');
drawnow; % Needed to improve stability when
pause(0.2); % capturing frames
currFrame = getframe; % Capture the frame
writeVideo(vidObj,currFrame); % Write to file
end
close(vidObj); % Close the file