//Including the necessary files
#include <stdio.h>
#include <opencv2/opencv.hpp> 
#include <unistd.h>

#include "logger.h"
#include "timer.h"
#include "object_tracking.h"
#include "view_frame.h"

int main(int argc, char** argv)//The main function
{

    int success = chdir("..");

    // Timer timer;
    bool camera = false;
    Logger logger;
    CaptureFrame vid;//taking video input

    if (success != 0)
    {
        logger.log_error("Unable to change working directory");
        std::cout << "couldn't change the directory/\n";
        return -1;
    }

    std::istringstream in(argv[1]);
    int test;
    if (in >> test && in.eof())
    camera = true;

    if(camera)
    {
        logger.log_info("Initiated Camera");
        vid.capture_video(atoi(argv[1]), "Input"); //In case of camera
    }
    else
    {   
        try
        {
            vid.capture_video(argv[1],"input");
            logger.log_info("Read Video file");
        }
        catch(...)
        {
            logger.log_error("could not load video");
            return 0;
        }
    }
    ObjectTracking tracker;//Object creation for tracker
    
    tracker.KCF_tracking(vid);//Tracking in video camera feed
    return 1;
}