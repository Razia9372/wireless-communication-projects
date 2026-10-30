# Wireless Communication Projects

A growing portfolio for the Wireless Communication course and related research: radio propagation, channel modeling, antennas, beamforming, link budgets, and emerging 5G/6G systems. Projects may contain MATLAB scripts, Python notebooks, figures, and research notes.

## Projects

| Project | Tools | Topic |
| --- | --- | --- |
| [Atmospheric attenuation](projects/01-atmospheric-attenuation/) | MATLAB | Gaseous absorption, rain attenuation, frequency comparison, link budget |

Each project has its own README, source code, and generated figures. New experiments should be added under `projects/` rather than mixing unrelated scripts in the repository root.

## Future topics

- Antenna radiation patterns and arrays
- Beam steering, beamforming, and beam focusing
- Path loss, shadowing, fading, and channel modeling
- MIMO, OFDM, and wireless signal processing
- 5G/6G radio links and AI-assisted RAN techniques

## Requirements

- MATLAB with Phased Array System Toolbox for the first project (`gaspl`, `rainpl`).
- Python and Jupyter may be used for future visualizations; dependencies should be listed in each relevant project.

## How to run

Open MATLAB, navigate into `projects/01-atmospheric-attenuation/matlab`, and run each script independently.

## Notes

The first simulations assume homogeneous atmospheric conditions and uniform rain along the path. They are educational link-model studies, not predictions of actual network coverage.

## References

- [ITU-R P.676, atmospheric gases](https://www.itu.int/rec/R-REC-P.676/en)
- [ITU-R P.838, rain](https://www.itu.int/rec/R-REC-P.838/en)
- [MathWorks gaspl](https://www.mathworks.com/help/phased/ref/gaspl.html)
- [MathWorks rainpl](https://www.mathworks.com/help/phased/ref/rainpl.html)
