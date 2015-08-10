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
plot(phaseplot(:,1), phaseplot(:,2),'.')
xlabel('e')
ylabel('edot');
title('Phase plot')
