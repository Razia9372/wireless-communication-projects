%% Rain attenuation versus frequency for several rain rates
clear; clc; close all;
frequencyHz = linspace(1,100,500)*1e9;
pathMeters = 1000;
rainRates = [1 5 20 50]; % mm/h

figure('Color','w'); hold on;
for idx = 1:numel(rainRates)
    lossDb = rainpl(pathMeters,frequencyHz,rainRates(idx));
    plot(frequencyHz/1e9,lossDb,'LineWidth',1.8);
end
grid on; xlabel('Frequency (GHz)'); ylabel('Rain attenuation over 1 km (dB)');
title('Effect of rainfall intensity');
legend('1 mm/h','5 mm/h','20 mm/h','50 mm/h','Location','northwest');
xlim([1 100]);
