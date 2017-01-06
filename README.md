# The-Physics-of-the-Violin
The objective of the experiment was the model the behaviour of the violin string under circumstances when it has been plucked and bowed. 
This was done in MATLAB and it should be noted that the effects of dissipation were not considered here. 

These function files are representative of the behaviour of a violin when plucked (HelmholtzCornerFunction) and when bowed (SumOfCornersFunction)
The video files can be run in order to create video animations of these behaviours. Their parameter descriptions were given in their
respective function files.

A helmholtz corner represents the inital starting point of a violin string when being played. An upward/downward acting force acting on 
a violin string will give rise to a helmholtz corner. This helmholtz corner will then move along the string which in a type of motion 
called Helmholtz motion. When the corner travels to the end of the string where it is fixed it will reflect and return along the opposite
direction. When observing the plucked animation the helmholtz corner continues to travel until the end of the animation. This is because
of the lack of disspative forces which were not considered. This is essentially what occurs in a string when plucked.

As for the bowed string, the bow and the string exhibit an interaction phenomenon called 'slip-stick' motion. This is a very interesting
concept which essentially allows the bow the go through phases of sticking and slipping when in contact due to the forces of tension and 
friction. Logically, as the string is in the stick phase, the bow naturally creates another helmholtz corner. This was therefore 
implemented into the SumOfCorners functino which thus represents the behaviour of the bow when being bowed.

Notes:

1. If trying to run this in MATLAB, ensure the number of parameters being initiated is corresponds the number of parameters in the function
file. 

2. If you want to create multiple files with diferent parameters, bear in mind to change the video file name. 

3. Wait until the inital animation is finished before closing to allow all the data to be written to the video file. 
