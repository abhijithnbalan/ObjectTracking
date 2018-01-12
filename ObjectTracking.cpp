#include <stdio.h>
#include <opencv2/opencv.hpp> 

#include "object_tracking.h"
#include "view_frame.h"

int main(int argc, char** argv)
{
    CaptureFrame vid;
    ObjectTracking tracker;
    vid.capture_video(0,"WebCam feed");
    tracker.KCF_tracking(vid);
    return 1;
}