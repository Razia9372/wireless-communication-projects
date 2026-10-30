%% Compare atmospheric effects at selected wireless frequencies
clear; clc; close all;
frequencyGHz = [3.5 28 60 100];
frequencyHz = frequencyGHz*1e9;
pathMeters = 1000;
temperatureC = 15; dryAirPressurePa = 101300;
vaporDensity = 7.5; rainRate = 20;

gasLoss = gaspl(pathMeters,frequencyHz,temperatureC,dryAirPressurePa,vaporDensity);
rainLoss = rainpl(pathMeters,frequencyHz,rainRate);
totalLoss = gasLoss + rainLoss;

disp(table(frequencyGHz(:),gasLoss(:),rainLoss(:),totalLoss(:), ...
    'VariableNames',{'Frequency_GHz','Gas_dB','Rain_dB','Total_dB'}));
figure('Color','w');
bar(categorical(string(frequencyGHz)),[gasLoss(:),rainLoss(:)],'stacked');
grid on; xlabel('Frequency (GHz)'); ylabel('Atmospheric attenuation (dB)');
title('Atmospheric loss for a 1 km wireless link');
legend('Gaseous absorption','Rain attenuation','Location','best');
