%% Simplified 28 GHz link budget (LOS, uniform atmosphere)
clear; clc; close all;
transmitPowerDbm = 30;
transmitGainDbi = 20; receiveGainDbi = 20;
frequencyHz = 28e9;
distanceMeters = (100:100:5000)';
temperatureC = 15; dryAirPressurePa = 101300;
vaporDensity = 7.5; rainRate = 20;
lightSpeed = 299792458;

freeSpaceLoss = 20*log10(4*pi*distanceMeters*frequencyHz/lightSpeed);
gasLoss = gaspl(distanceMeters,frequencyHz,temperatureC,dryAirPressurePa,vaporDensity);
rainLoss = rainpl(distanceMeters,frequencyHz,rainRate);
receivedClear = transmitPowerDbm + transmitGainDbi + receiveGainDbi ...
    - freeSpaceLoss - gasLoss;
receivedRain = receivedClear - rainLoss;

figure('Color','w');
plot(distanceMeters/1000,receivedClear,'b','LineWidth',1.8); hold on;
plot(distanceMeters/1000,receivedRain,'r--','LineWidth',1.8);
grid on; xlabel('Distance (km)'); ylabel('Received power (dBm)');
title('28 GHz link budget with atmospheric attenuation');
legend('No rain','Rain (20 mm/h)','Location','best');
