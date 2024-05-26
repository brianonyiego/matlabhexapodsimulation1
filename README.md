# MATLAB Gait Cycle Interpolation

## Overview

This MATLAB script performs linear interpolation to compute the current positions of a system (e.g., a robotic leg or limb) during a gait cycle. It uses defined initial and final positions, along with timing parameters, to calculate the current position at a given time within the cycle. This can be useful in robotics, biomechanics, and control systems where understanding and controlling movement patterns is essential.

## Features

- Define geometry constants such as lengths, frame radius, and height offset.
- Specify initial and final positions for a gait cycle.
- Perform linear interpolation to find current positions based on the current time.
- Display the calculated current positions.

## Prerequisites

- MATLAB installed on your computer.
- Basic understanding of MATLAB syntax and linear interpolation.

## Script Breakdown

### 1. Clear Workspace and Command Window

The script begins by clearing the workspace and the command window to ensure no residual variables or outputs interfere with the current script execution.

```matlab
clear;
clc;
```

### 2. Define Geometry Constants

This section defines some essential geometric constants that might be relevant to the system being modeled, such as link lengths, frame radius, and height offset.

```matlab
len = [27.0, 48.0, 153.0];
frame_radius  = 104.24;
height_offset = 46.6;
```

### 3. Gait Cycle Coordinates

This part defines the initial and final positions for each coordinate in the gait cycle, as well as the timing parameters.

#### Initial and Final Positions

Arrays representing the initial and final positions of the system during the gait cycle.

```matlab
initial3 = [10, 20, 30]; % Example initial positions
final3 = [50, 60, 70];   % Example final positions
```

#### Time Parameters

Variables defining the start, end, and current time within the gait cycle.

```matlab
t_initial = 0;
t_final = 1;
t_curr = 0.5; % Example current time within the cycle
```

### 4. Initialize Current Positions Array

An array to hold the interpolated current positions based on the current time.

```matlab
current3 = zeros(size(initial3));
```

### 5. Linear Interpolation Calculation

A loop to compute the current positions using linear interpolation between the initial and final positions for each coordinate.

```matlab
for i = 1:length(initial3)
    initial = initial3(i);
    final = final3(i);
    
    % Calculate the linear interpolation
    numerator = final - initial;
    denominator = t_final - t_initial; 
    current3(i) = (numerator/denominator)*(t_curr - t_initial) + initial;
end
```

### 6. Display the Current Positions

Finally, the script displays the computed current positions.

```matlab
disp('Current positions:');
disp(current3);
```

## How to Run

1. Open MATLAB.
2. Copy the entire script into a new script file and save it (e.g., `gait_cycle_interpolation.m`).
3. Adjust the `initial3`, `final3`, and `t_curr` variables as needed for your specific use case.
4. Run the script by pressing the "Run" button in the MATLAB editor or by typing `run('gait_cycle_interpolation.m')` in the command window.

## Example

Here is an example output for the given initial and final positions with `t_curr` set to 0.5:

```
Current positions:
    30.0000   40.0000   50.0000
```

## Troubleshooting

- Ensure all variables are defined correctly.
- Check that `t_final` is not equal to `t_initial` to avoid division by zero.
- Verify that `t_curr` is within the range of `t_initial` and `t_final`.

## License

This code is provided for educational and research purposes. Feel free to use and modify it as needed.

## Conclusion

This MATLAB script provides a simple yet powerful method to interpolate positions during a gait cycle. By modifying the initial and final positions and the timing parameters, you can adapt it to various applications in robotics, biomechanics, and other fields requiring precise motion control.


OUTPUT:



