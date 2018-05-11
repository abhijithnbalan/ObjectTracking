
#include "object_tracking.h"
#include "view_frame.h"
#include "image_processing.h"
#include "timer.h"
#include <opencv2/opencv.hpp> 
#include "opencv2/imgproc/imgproc.hpp"
#include <opencv2/tracking.hpp>
#include <opencv2/core/ocl.hpp>

void ObjectTracking::contour_identification(CaptureFrame obj)//contour identification for Object tracking
{
    std::vector<std::vector<cv::Point> > contours;//Initializing vecotr of points to store contour
    std::vector<cv::Vec4i> hierarchy;//Initializing vecotr of points to store hirearchy for each contour
    cv::Mat drawing;//Mat which will be used for drawing rectangles
    
    int len,i;//length of contour and iteration variable
    int cenx = 0;//initilaizing centers as zero.
    int ceny = 0;

    cv::Mat image = obj.retrieve_image();

    if (image.channels() != 1) //check whether the image is segemented or not.
    {
        std::cout << "The image is not segemented for contour identification\n";
        return ;
    }

    findContours(image, contours, hierarchy, CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE); //Finding contours
    for (i = 0; i < contours.size(); i++)                                           //Loop to draw every identified contours.
    {
        drawContours(image, contours, i, cv::Scalar(255, 0, 0), CV_FILLED); // fill the contours to eliminate hollow segments.
    }
    findContours(image, contours, hierarchy, CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE); //Again finding the contours(This will eliminate contors inside contours)

    double largest_area = 0;
    int index = 0;

    for (int i = 0; i < contours.size(); i++) // iterate through each contour.
    {
        double a = contourArea(contours[i], false); //  Find the area of contour
        if (a > largest_area)
        {
            largest_area = a;
            index = i; //Store the index of largest contour
        }
    }
    if (contours.size() > 0)
    {
    box = boundingRect(contours[index]);
    flag = true;//flagging successful color identification
    }
    else
    {
        flag = false;//flagging unsuccessful flagging attempt
    }

    return;
}
int ObjectTracking::tracker_function(CaptureFrame obj)//The tracker function
{

    ViewFrame viewer;
    Timer timer;
        obj.frame_extraction();
        contour_identification(image_segmentation(obj));
        if (flag) //if a center is identified. i.e. an color object is found.
        {
            tracker->init(obj.retrieve_image(), box);

            std::cout << "Re-initializing Tracker\n";
            for (int i = 0;;i++)
            {
                timer.timer_init();
                cv::Rect2d bbox = box;
                obj.frame_extraction();
                cv::Mat input = obj.retrieve_image();
                bool isSuccess = tracker->update(input, bbox); //Checking if the tracker can update .
                center = cv::Point2d(bbox.x + bbox.width / 2, bbox.y + bbox.height / 2);
                // cout<<"test  "<<center.x<<"\n";
                if (isSuccess)
                {
                    //Tracker update was successful and the rectangle is drawn and the center is printed.
                    rectangle(input, bbox, cv::Scalar(0, 0, 0), 2, 1);
                    // std::cout << "tracking"
                            //   << "  " << center.x << "  " << center.y<<"\n";
                    if(i == 25)
                    {
                        prev = center_backup;
                        center = cv::Point2d(bbox.x + bbox.width / 2, bbox.y + bbox.height / 2);
                        center_backup = center;
                        printf("Object position x: %d  y: %d\n",int(center.x),int(center.y));
                        if(abs(prev.x - center.x) > direction_threshold ||abs(prev.y - center.y) > direction_threshold )
                        {
                             printf("Motion Detected    dx : %d , dy : %d \n",int(center.x - prev.x),int(center.y - prev.y)) ;

                        }
                        i = 0;
                        
                    }
                    else
                    {
                        center = cv::Point2d(bbox.x + bbox.width / 2, bbox.y + bbox.height / 2);
                    }
                }
                else
                {
                    //Tracker couldnt update .
                    std::cout << "Tracking Failed :{ \n";
                    break;
                }
                timer.timer_end();
                CaptureFrame output(input, "Tracked frame");
                // timer.
                // output = timer.add_fps(output);
                viewer.single_view_uninterrupted(output);

                char c = (char)cv::waitKey(5);
                if (c == 27)
                    return -1;
                else if (c == 114)
                    return 1;
                else
                    continue;
            }
        }

        else
        {
            std::cout << "Tracker not initiated. Searching for color\n";
            CaptureFrame output(obj.retrieve_image(),"Tracked frame");
            viewer.single_view_uninterrupted(output);
        }

    return 1;
}
void ObjectTracking::MIL_tracking(CaptureFrame obj) //MIL tracking algorithm
{

    ViewFrame viewer;
    
    tracker = cv::TrackerMedianFlow::create();
    while (true)
    {
       int feedback = tracker_function(obj);
        if(feedback == 1)
        {
            tracker->clear();
            trackerNew = cv::TrackerMIL::create();
            tracker = trackerNew;
            if (cv::waitKey(10) >= 0)
            break;
        }
        else break;
        
    }

    return;
}

void ObjectTracking::KCF_tracking(CaptureFrame obj) //KCF tracking algorithm
{

    ViewFrame viewer;
    Timer timer1;
    
    tracker = cv::TrackerKCF::create();
    while (true)
    {
        timer1.timer_init();
       int feedback = tracker_function(obj);
       timer1.timer_end();
        if(feedback == 1)
        {
            tracker->clear();
            trackerNew = cv::TrackerKCF::create();
            tracker = trackerNew;
            if (cv::waitKey(10) >= 0)
            break;
        }
        else break;
        
    }

    return;
}
void ObjectTracking::MedianFlow_tracking(CaptureFrame obj) //Median Flow tracking algorithm
{

    ViewFrame viewer;
    
    tracker = cv::TrackerMedianFlow::create();
    while (true)
    {
       int feedback = tracker_function(obj);
        if(feedback == 1)
        {
            tracker->clear();
            trackerNew = cv::TrackerMedianFlow::create();
            tracker = trackerNew;
            if (cv::waitKey(10) >= 0)
            break;
        }
        else break;
        
    }

    return;
}
void ObjectTracking::Boosting_tracking(CaptureFrame obj) //Boosting tracking algorithm
{

    ViewFrame viewer;
    
    tracker = cv::TrackerBoosting::create();
    while (true)
    {
       int feedback = tracker_function(obj);
        if(feedback == 1)
        {
            tracker->clear();
            trackerNew = cv::TrackerBoosting::create();
            tracker = trackerNew;
            if (cv::waitKey(10) >= 0)
            break;
        }
        else break;
        
    }

    return;
}

ObjectTracking::ObjectTracking()//Constructor
{
    center = prev = center_backup = cv::Point2d(0,0);
    direction_threshold = 15;
}

