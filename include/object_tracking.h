#ifndef _object_tracking_h
#define _object_tracking_h

#include "capture_frame.h"
#include "image_processing.h"
#include <opencv2/opencv.hpp> 

class ObjectTracking:public ImageProcessing
{
    protected:
    cv::Rect2d box;bool flag;cv::Point2d center,prev,center_backup;
    public:
    int direction_threshold;
    void contour_identification(CaptureFrame);
    void MIL_tracking(CaptureFrame);
    void KCF_tracking(CaptureFrame);
    void MedianFlow_tracking(CaptureFrame);
    void Boosting_tracking(CaptureFrame);
    ObjectTracking();
};

#endif