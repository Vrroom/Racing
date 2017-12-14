Silverstone Track Coordinates
=============================

We needed the coordinates of the circuit. So we took an image of the 
track and did the following:
1. Read in the image as a 3D array in MATLAB
2. Noticed that the color of the road in the photo is [R,G,B] ~ [232,0,0]
3. In the 3D array, the first two entries represent the x,y coordinates of the pixel and the last entry refers to the color (R=1, G=2, B=3), we calculated the variance and the mean of the RGB values in a 4x4 area.
4. If the variance was low and the mean was close to [232,0,0], we included the center of the 4x4 area as a point on the track.

Results
-------
Original Image:

![alt text][tr1]

Scatter Plot of the points:

![alt text][tr2]

To see the list of the points, run the code in MATLAB. The points are stored in the variable 'trackPoints'.

Problems
--------

* As you can see the scatter plot is a mirror image of the original track
* The order of points in the array is not the same as the order in which they appear as you traverse the road. Hence relying on the points to calculate the distance of the road is dangerous. 
