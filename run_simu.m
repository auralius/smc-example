clear all
close all
clc

%% Define the system
M = 1;
B = 0.2;


%% Run the simlation
tsim = 20;
ts = 0.001;
sim('smc_mass_1d.slx')

%% Phase plot of e vs edot
figure;
plot(phaseplot(:,1), phaseplot(:,2),'.')
xlabel('e')
ylabel('edot');
title('Phase plot')

%% Tracking
figure;
hold on;
t = 0:ts:(size(tracking)-1)*ts;
plot(t, tracking(:,1), '-.r', 'Linewidth', 2)
plot(t, tracking(:,2), 'b')
xlabel('Time (s)')
ylabel('X (m)');
title('Tracking performance')
legend('reference', 'actual')

%% Switching action
figure;
hold on;
t = 0:ts:(size(tracking)-1)*ts;
plot(t, switching(:,1))
xlabel('Time (s)')
ylabel('Switching action (N)')
title('Switching action')

