# AdaptiveFlow-Palletizer

An open-source MATLAB & Simulink robotics project focused on adaptive palletization using the **UR10e** robot. This project explores intelligent box handling, adaptive pallet optimization, trajectory planning, simulated perception systems, and warehouse automation.

> Developed as part of the **MathWorks MATLAB & Simulink Challenge Project #254** in collaboration with Universal Robots.

---

## Project Overview

This project extends the baseline MATLAB palletizing example into a more adaptive and intelligent robotic workflow capable of handling dynamic warehouse scenarios.

The system is designed around a **UR10e collaborative robot** and focuses on:

- Variable box dimension handling
- Adaptive pallet arrangement
- Simulated perception pipeline
- Dynamic trajectory planning
- Collision-aware robot motion
- Predictive maintenance simulation
- Digital twin monitoring dashboard

The goal is to build a scalable robotics workflow that combines optimization, perception, simulation, and intelligent automation into a unified palletization system.

---

## Current Progress

- Successfully configured and executed the baseline UR10e palletizing simulation
- Initialized GitHub-based development workflow
- Developed modular project structure
- Started implementing dynamic box handling and simulated perception pipeline

---

## Required MATLAB Toolboxes

- Simulink
- Robotics System Toolbox
- Simulink 3D Animation
- Optimization Toolbox
- Global Optimization Toolbox
- Predictive Maintenance Toolbox *(planned)*
- Computer Vision Toolbox *(optional)*

---

## How to Run

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/AdaptiveFlow-Palletizer.git
```

### 2. Open MATLAB

Open the repository folder inside MATLAB.

### 3. Run the Setup Script

Navigate to:

```text
matlab_scripts/setup_robot.m
```

Run the script to initialize:

- UR10e robot
- Gripper
- Pallet environment
- Simulation parameters

### 4. Open the Simulink Model

Navigate to:

```text
simulink_models/PalletizeBoxesUsingCobot.slx
```

Run the simulation.

### 5. Run the Perception Pipeline *(Optional)*

Navigate to:

```text
tests/test_perception_pipeline.m
```

This simulates:

- Dynamic box generation
- Box detection
- Weight estimation
- Sensor-driven workflow

---

## Repository Structure

```
AdaptiveFlow-Palletizer/
├── simulink_models/                    # Simulink simulation files for UR10e palletizing
│   └── PalletizeBoxesUsingCobot.slx    # Main Simulink model — run this for the simulation
├── matlab_scripts/                     # MATLAB setup and utility scripts
│   └── setup_robot.m                   # Run this first to initialize robot, gripper, and environment
├── helper_functions/                   # Reusable helper functions shared across modules
├── optimization/                       # Pallet arrangement and box placement optimization algorithms
├── perception/                         # Simulated perception pipeline for box detection
│   └── test_perception_pipeline.m      # Simulates box detection, weight estimation, and sensor workflow
├── maintenance/                        # Predictive maintenance simulation modules
├── dashboard/                          # Real-time digital twin monitoring dashboard
├── data/                               # Runtime data, logs, and generated outputs
├── docs/                               # Documentation, architecture notes, and result plots
├── tests/                              # Test scripts and validation routines
├── videos/                             # Demo videos and simulation screen recordings
├── assets/                             # Images, icons, and visual assets
└── README.md                           # Project overview and usage instructions
```

---

## Planned Features

- QR-based box identification
- Online adaptive optimization
- Dynamic obstacle handling
- Predictive maintenance analytics
- Real-time dashboard monitoring
- Digital twin integration
- Optimization comparison studies

---

## Demo / Results

Simulation videos, screenshots, and results will be added under `videos/` and `docs/`.

---

## References

- [MATLAB Robotics System Toolbox](https://www.mathworks.com/products/robotics.html)
- [Simulink 3D Animation](https://www.mathworks.com/products/3d-animation.html)
- [Universal Robots UR10e Documentation](https://www.universal-robots.com/products/ur10-robot/)
- [MathWorks Adaptive Palletizing Challenge](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub)
- Intelligent Robotic Palletizer System (Applied Sciences, 2021)

---

## License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

## Author

**Omkar Putti**
