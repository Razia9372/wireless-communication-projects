# Atmospheric attenuation in wireless links

MATLAB simulations of attenuation caused by atmospheric gases and rainfall, using the ITU models exposed by MATLAB's `gaspl` and `rainpl` functions.

## Scripts

1. `matlab/atmospheric_attenuation.m`: dry air, humid air, and rain over 1 km, 1–1000 GHz.
2. `matlab/rain_attenuation.m`: attenuation versus frequency at four rain rates.
3. `matlab/frequency_comparison.m`: compare atmospheric losses at 3.5, 28, 60, and 100 GHz.
4. `matlab/wireless_link_budget.m`: received power versus distance at 28 GHz, with and without rain.

Run the scripts independently. Save chosen figures in `figures/` and describe observed results here when available. No simulation outputs are included until the scripts have been executed.

## Assumptions and interpretation

- `range` is measured in meters, and frequency in Hz.
- `gaspl` takes Celsius, dry-air pressure in Pa, and water-vapor density in g/m^3.
- `rainpl` uses mm/h and assumes a uniformly rainy path. MATLAB interprets the specified rain rate as a statistical rain rate for its default exceedance percentage.
- For a 1 km homogeneous path, attenuation expressed in dB has the same numerical value as specific attenuation expressed in dB/km.
- Gaseous/rain attenuation is **additional** to free-space path loss; neither model includes buildings, multipath, or fading.

## References

See the root README for ITU-R and MathWorks documentation.
