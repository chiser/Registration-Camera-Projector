function out=initializeCameraChristianCustomswep(adaptorName,deviceID,format)

vid = videoinput(adaptorName,deviceID,format);
src = getselectedsource(vid);
src.Exposure = 1;
src.Gain = 10;
src.Shutter = 16.64;
src.WhiteBalanceRBMode = 'Off';
src.Gamma = 1.4;

triggerconfig(vid,'manual');

% Create the image object in which you want to display 
% the video preview data. Make the size of the image
% object match the dimensions of the video frames.

vidRes = vid.VideoResolution;
nBands = vid.NumberOfBands;

start(vid)
VidStatus = 1;

out=vid;
