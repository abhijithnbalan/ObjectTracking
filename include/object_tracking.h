#ifndef _object_tracking_h
#define _object_tracking_h

#include "capture_frame.h"
#include "image_processing.h"
#include <opencv2/opencv.hpp> 
#include <opencv2/tracking.hpp>
#include <opencv2/core/ocl.hpp>

class ObjectTracking:public ImageProcessing
{
    private:
    cv::Ptr<cv::Tracker> tracker,trackerNew;//common shared varaible for tracker type
    protected:
    cv::Rect2d box;bool flag;cv::Point2d center,prev,center_backup;//prev and center_backup is used for direction
    public:
    int direction_threshold;//the threshold beyond which the disturbance will be recorded as motion
    
    void contour_identification(CaptureFrame);//contour identification for onject tracking.
    void MIL_tracking(CaptureFrame);//MIL tracking algorithm.
    void KCF_tracking(CaptureFrame);//KCF tracking algorithm.
    void MedianFlow_tracking(CaptureFrame);//Median Flow tracking algorithm.
    void Boosting_tracking(CaptureFrame);//Boosting tracking algorithm.
    int tracker_function(CaptureFrame);//tracker function. every trackers will be calling this.
    ObjectTracking();//The constructor
};

#endif