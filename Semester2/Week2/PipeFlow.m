clc; clear; close all;

%% Constants
R = 1; % Radius of pipe
r = linspace(0,R,20); % Incremental positions in radius
mu = 8.9e-3; % Dynamic viscosity
dpdx = 1; % Pressure gradient

% vMean = 20; % Mean pipe velocity
vMean = (1/(4*mu) * dpdx * R^2); % Mean pipe velocity as function of visc, p gradient, pipe radius


%% Velocity profile
vProfile = vMean * (1 - (r.^2)/(R^2) );


%% Plot code
figure;
subplot(2,2,1)
plot(vProfile, r, 'r', 'LineWidth',2)
xlabel('Flow velocity, m/s');
ylabel('Radial position, m');
title('Pipe flow velocity profile');
axis([0 30 0 1]);
grid on; grid minor;

subplot(2,2,2)
plot(vProfile, -r, 'g', 'LineWidth',2)
xlabel('Flow velocity, m/s');
ylabel('Radial position, m');
title('Pipe flow velocity profile');
axis([0 30 -1 0]);
grid on; grid minor;

subplot(2,2,[3 4])
plot(vProfile, r, 'r', 'LineWidth',2)
hold on
plot(vProfile, -r, 'g', 'LineWidth',2)
xlabel('Flow velocity, m/s');
ylabel('Radial position, m');
title('Pipe flow velocity profile');
axis([0 30 -1 1]);
grid on; grid minor;









% Extra credit
% R = [1:0.1:10];
% r = linspace(0,R,20);
% mu = 8.9 .* logspace(-4,-2);
% vMean = (1./(4*mu) .* dpdx .* R^2);
% % vProfile = vMean .* (1 - (r.^2)/(R^2) );
% % vProfile = zeros()
% 
% for i=1:length(vMean)
%     for j=1:length(r)
%         vProfile(j,i) = vMean(i) * (1 - (r(j)^2)/(R^2) );
%     end
% end
% 
% figure;
% [X Z] = meshgrid(vMean, r);
% % surf(X,Y,vProfile)
% surf(X,vProfile,Z, 'EdgeColor','none')
% hold on
% surf(X,vProfile,-Z, 'EdgeColor','none')
% xlabel('Mean velocity, m/s', 'FontSize',16)
% ylabel('Flow velocity, m/s', 'FontSize',16);
% zlabel('Radial position, m', 'FontSize',16);
% title('Pipe flow velocity profile');
% cameratoolbar