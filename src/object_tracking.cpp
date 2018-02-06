
#include "object_tracking.h"
#include "view_frame.h"
#include "image_processing.h"
#include "timer.h"
#include <opencv2/opencv.hpp> 
#include "opencv2/imgproc/imgproc.hpp"
#include <opencv2/tracking.hpp>
#include <opencv2/core/ocl.hpp>

void ObjectTracking::contour_identification(CaptureFrame obj)
{
    std::vector<std::vector<cv::Point> > contours;
    std::vector<cv::Vec4i> hierarchy;
    cv::Mat drawing;
    int len,i;
    int cenx = 0;
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
    flag = true;
    }

    return;
}

void ObjectTracking::MIL_tracking(CaptureFrame obj) //MIL tracking algorithm
{

    ViewFrame viewer;
    cv::Ptr<cv::Tracker> tracker;
    tracker = cv::TrackerMIL::create();
    while (true)
    {
        obj.frame_extraction();
        contour_identification(image_segmentation(obj));
        if (flag) //if a center is identified. i.e. an color object is found.
        {
            tracker->init(obj.retrieve_image(), box);

            std::cout << "Re-initializing Tracker\n";
            for (;;)
            {
                cv::Rect2d bbox = box;
                obj.frame_extraction();
                cv::Mat input = obj.retrieve_image();
                bool isSuccess = tracker->update(input, bbox); //Checking if the tracker can update 
                imshow("sjdfk",input);
                center = cv::Point2d(bbox.x + bbox.width / 2, bbox.y + bbox.height / 2);

                if (isSuccess)
                {
                    //Tracker update was successful and the rectangle is drawn and the center is printed.
                    rectangle(input, bbox, cv::Scalar(0, 0, 0), 2, 1);
                    std::cout << "tracking"
                              << "  " << center.x << "  " << center.y << "\n";
                }
                else
                {
                    //Tracker couldnt update .
                    std::cout << "Tracking Failed :{\n";
                    break;
                }
                CaptureFrame output(input, "Tracked frame");
                viewer.single_view_uninterrupted(output);

                char c = (char)cv::waitKey(5);
                if (c == 27)
                    return;
                else if (c == 114)
                    break;
                else
                    continue;
            }
        }

        else
        {
            std::cout << "Tracker not initiated. Searching for color/n";
            imshow("tracked", obj.retrieve_image());
        }

        tracker->clear();
        cv::Ptr<cv::Tracker> trackerNew = cv::TrackerMIL::create();
        tracker = trackerNew;
        if (cv::waitKey(10) >= 0)
            break;
    }

    return;
}

void ObjectTracking::KCF_tracking(CaptureFrame obj) //MIL tracking algorithm
{

    ViewFrame viewer;
    cv::Ptr<cv::Tracker> tracker;
    tracker = cv::TrackerKCF::create();
    while (true)
    {
        // timer.init();
        obj.frame_extraction();
        contour_identification(image_segmentation(obj));
        if (flag) //if a center is identified. i.e. an color object is found.
        {
            tracker->init(obj.retrieve_image(), box);

            std::cout << "Re-initializing Tracker\n";
            for (;;)
            {
                // timer.init();
                cv::Rect2d bbox = box;
                obj.frame_extraction();
                cv::Mat input = obj.retrieve_image();
                bool isSuccess = tracker->update(input, bbox); //Checking if the tracker can update .
                center = cv::Point2d(bbox.x + bbox.width / 2, bbox.y + bbox.height / 2);

                if (isSuccess)
                {
                    //Tracker update was successful and the rectangle is drawn and the center is printed.
                    rectangle(input, bbox, cv::Scalar(0, 0, 0), 2, 1);
                    std::cout << "tracking"
                              << "  " << center.x << "  " << center.y << "\n";
                }
                else
                {
                    //Tracker couldnt update .
                    std::cout << "Tracking Failed :{\n";
                    break;
                }
                // timer.end();
                CaptureFrame output(input, "Tracked frame");
                // timer.
                viewer.single_view_uninterrupted(output);

                char c = (char)cv::waitKey(5);
                if (c == 27)
                    return;
                else if (c == 114)
                    break;
                else
                    continue;
            }
        }

        else
        {
            std::cout << "Tracker not initiated. Searching for color/n";
            imshow("tracked", obj.retrieve_image());
        }

        tracker->clear();
        cv::Ptr<cv::Tracker> trackerNew = cv::TrackerKCF::create();
        tracker = trackerNew;
        if (cv::waitKey(10) >= 0)
            break;
    }

    return;
}
void ObjectTracking::MedianFlow_tracking(CaptureFrame obj) //MIL tracking algorithm
{

    ViewFrame viewer;
    cv::Ptr<cv::Tracker> tracker;
    tracker = cv::TrackerMedianFlow::create();
    while (true)
    {
        obj.frame_extraction();
        contour_identification(image_segmentation(obj));
        if (flag) //if a center is identified. i.e. an color object is found.
        {
            tracker->init(obj.retrieve_image(), box);

            std::cout << "Re-initializing Tracker\n";
            for (;;)
            {
                cv::Rect2d bbox = box;
                obj.frame_extraction();
                cv::Mat input = obj.retrieve_image();
                bool isSuccess = tracker->update(input, bbox); //Checking if the tracker can update .
                center = cv::Point2d(bbox.x + bbox.width / 2, bbox.y + bbox.height / 2);

                if (isSuccess)
                {
                    //Tracker update was successful and the rectangle is drawn and the center is printed.
                    rectangle(input, bbox, cv::Scalar(0, 0, 0), 2, 1);
                    std::cout << "tracking"
                              << "  " << center.x << "  " << center.y << "\n";
                }
                else
                {
                    //Tracker couldnt update .
                    std::cout << "Tracking Failed :{\n";
                    break;
                }
                CaptureFrame output(input, "Tracked frame");
                viewer.single_view_uninterrupted(output);

                char c = (char)cv::waitKey(5);
                if (c == 27)
                    return;
                else if (c == 114)
                    break;
                else
                    continue;
            }
        }

        else
        {
            std::cout << "Tracker not initiated. Searching for color/n";
            imshow("tracked", obj.retrieve_image());
        }

        tracker->clear();
        cv::Ptr<cv::Tracker> trackerNew = cv::TrackerMedianFlow::create();
        tracker = trackerNew;
        if (cv::waitKey(10) >= 0)
            break;
    }

    return;
}
void ObjectTracking::Boosting_tracking(CaptureFrame obj) //MIL tracking algorithm
{

    ViewFrame viewer;
    cv::Ptr<cv::Tracker> tracker;
    tracker = cv::TrackerBoosting::create();
    while (true)
    {
        obj.frame_extraction();
        contour_identification(image_segmentation(obj));
        if (flag) //if a center is identified. i.e. an color object is found.
        {
            tracker->init(obj.retrieve_image(), box);

            std::cout << "Re-initializing Tracker\n";
            for (;;)
            {
                cv::Rect2d bbox = box;
                obj.frame_extraction();
                cv::Mat input = obj.retrieve_image();
                bool isSuccess = tracker->update(input, bbox); //Checking if the tracker can update .
                center = cv::Point2d(bbox.x + bbox.width / 2, bbox.y + bbox.height / 2);

                if (isSuccess)
                {
                    //Tracker update was successful and the rectangle is drawn and the center is printed.
                    rectangle(input, bbox, cv::Scalar(0, 0, 0), 2, 1);
                    std::cout << "tracking"
                              << "  " << center.x << "  " << center.y << "\n";
                }
                else
                {
                    //Tracker couldnt update .
                    std::cout << "Tracking Failed :{\n";
                    break;
                }
                CaptureFrame output(input, "Tracked frame");
                viewer.single_view_uninterrupted(output);

                char c = (char)cv::waitKey(5);
                if (c == 27)
                    return;
                else if (c == 114)
                    break;
                else
                    continue;
            }
        }

        else
        {
            std::cout << "Tracker not initiated. Searching for color/n";
            imshow("tracked", obj.retrieve_image());
        }

        tracker->clear();
        cv::Ptr<cv::Tracker> trackerNew = cv::TrackerBoosting::create();
        tracker = trackerNew;
        if (cv::waitKey(10) >= 0)
            break;
    }

    return;
}
