//Including the necessary files
#include <stdio.h>
#include <opencv2/opencv.hpp> 

#include "timer.h"
#include "object_tracking.h"
#include "view_frame.h"

int main(int argc, char** argv)//The main function
{
    // Timer timer;
    CaptureFrame vid;//taking video input
    ObjectTracking tracker;//Object creation for tracker
    vid.capture_video(0,"WebCam feed");//capturing camera
    tracker.KCF_tracking(vid);//Tracking in video camera feed
    return 1;
}