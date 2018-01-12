

#include "algorithm.h"
#include <opencv2/opencv.hpp> 

CaptureFrame Algorithm::CLAHE_dehaze(CaptureFrame object) //CLAHE based basic dehazing algorithm
    {
        cv::Mat image_hsv;
        cvtColor(object.retrieve_image(), image_hsv, cv::COLOR_BGR2HSV);
        std::vector<cv::Mat> channels;
        split(image_hsv, channels);
        cv::Ptr<cv::CLAHE> clahe = cv::createCLAHE();
        clahe->setClipLimit(2);
        clahe->apply(channels[2], channels[2]);
        clahe->apply(channels[1], channels[1]);
        channels[2] = channels[2] * 0.85;
        merge(channels, image_hsv);
        cv::Mat dehazed;
        cvtColor(image_hsv, dehazed, cv::COLOR_HSV2BGR);
        GaussianBlur(dehazed, dehazed, cv::Size(3, 3), 2, 2);
        CaptureFrame output(dehazed, "Dehazed image");
        return output;
    }
cv::Mat Algorithm::CLAHE_dehaze(cv::Mat object) //CLAHE based basic dehazing algorithm
    {
        cv::Mat image_hsv;
        cvtColor(object, image_hsv, cv::COLOR_BGR2HSV);
        std::vector<cv::Mat> channels;
        split(image_hsv, channels);
        cv::Ptr<cv::CLAHE> clahe = cv::createCLAHE();
        clahe->setClipLimit(2);
        clahe->apply(channels[2], channels[2]);
        clahe->apply(channels[1], channels[1]);
        channels[2] = channels[2] * 0.85;
        merge(channels, image_hsv);
        cv::Mat dehazed;
        cvtColor(image_hsv, dehazed, cv::COLOR_HSV2BGR);
        GaussianBlur(dehazed, dehazed, cv::Size(3, 3), 2, 2);
        return dehazed;
    }