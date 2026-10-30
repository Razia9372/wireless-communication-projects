%% Atmospheric attenuation across 1-1000 GHz
% Requires Phased Array System Toolbox.
clear; clc; close all;
frequencyHz = linspace(1,1000,2000)*1e9;
pathMeters = 1000;
temperatureC = 15;
dryAirPressurePa = 101300;
vaporDensity = 7.5; % g/m^3
rainRate = 20; % mm/h

lossDry = gaspl(pathMeters,frequencyHz,temperatureC,dryAirPressurePa,0);
lossHumid = gaspl(pathMeters,frequencyHz,temperatureC,dryAirPressurePa,vaporDensity);
lossRain = rainpl(pathMeters,frequencyHz,rainRate);

figure('Color','w');
semilogy(frequencyHz/1e9,lossDry,'b','LineWidth',1.5); hold on;
semilogy(frequencyHz/1e9,lossHumid,'r','LineWidth',1.5);
semilogy(frequencyHz/1e9,lossRain,'k','LineWidth',1.5);
grid on; xlabel('Frequency (GHz)'); ylabel('Attenuation over 1 km (dB)');
title('Atmospheric attenuation versus frequency');
legend('Dry air','Humid air','Rain (20 mm/h)','Location','northwest');
xlim([1 1000]);
