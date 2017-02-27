# Registration-Camera-Projector
This code is written in order to register the camera coordinates with the projector coordinates for the experiments performed for optogenetic stimulation of flies contingent on their behavior - link. 

One has to run the program with ambient light (without backlight), the cameras without visible filter in front (since we need to see the visible patterns from the projector) and place a white board in the region of interest. The reason of the latter is because we want to register all the coordinates within this region, for that when the projector displays in a dark background there is nothing detected by the camera, whereas the white board provides the contrast to see what the projector displays in the camera. 

You can start the registration by calling in Matlab the reg_gui script. The GUI is a bit buggy so one has to tweak it a bit sometimes, make sure the you fullfill the above mentioned requirements. Then, the program will sweep a dark vertical line from the left, until it hits the white board where the camera will be able to detect it. This will be the left border of the ROI (in x coordinates), and the right border of the coordinates will be when the camera no longer detects the sweeping line. The same procedure will happen straight after with a horizontal line sweeping downwards to assess the Y-axis range of the ROI.

Once the ROI bounds are found out, the projector will display a set of hard coded 40 squares diagonally that sweep to the right. By comparing the projector output - camera input we yield a 2D fit to be able to map the points in the projector space to the camera space.

Parts list:
-2" Square RG850 Colored Glass Filter, 850 nm Long pass Thorlabs

-For the box with roof:

             -Acrylic. Also a bit of transparent acrylic for the filter holder that goes in front of the camera.

             -Rails: 4x130-150cm and 1x30cm for holding the projector

             -Thornlabs bolts and nuts

-The regular IR illumination panel in the lab.

-Piece of wood: something like 35x40x5cm should work.

-Camera: Pointgrey Firefly MV

-Projector Optoma 

-Diffuser: Sanded transparent acrylic

-Mazes´s rig
