# Registration-Camera-Projector
This code is written in order to register the camera coordinates with the projector coordinates for the experiments performed for optogenetic stimulation of flies contingent on their behavior - chiser/autoTrackerV2-old-version-. 

One has to run the program with ambient light (with IR backlight turned off), the cameras without the visible filter in front (since we need to see the visible patterns displayed dfsadffrom the projector) and place a white board in the region of interest. The reason of the latter is because we want to register all the coordinates within this region, for that when the projector displays in a dark background there is nothing detected by the camera, whereas the white board provides the contrast to see what the projector displays in the camera. 

You can start the registration by calling in Matlab the reg_gui script. The GUI is a bit buggy so one has to play with the hardware sometimes, make sure the you fullfill the above mentioned requirements. Hopefully future releases will solve all this problems. Then, the program will sweep a dark vertical line from the left, until it hits the white board where the camera will be able to detect it. This will be the left border of the ROI (in x coordinates), and the right border of the coordinates will be when the camera no longer detects the sweeping line. The same procedure will happen straight after with a horizontal line sweeping downwards to assess the Y-axis range of the ROI.

Once the ROI bounds are found out, the projector will display a set of hard coded 40 squares diagonally that sweep to the right. By comparing the projector output - camera input we yield a 2D fit to be able to map the points in the projector space to the camera space.


