#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <ctime>
#include "geometry_msgs/Vector3.h"
#include "std_msgs/Float32.h"
#include <math.h>
#include "imu_3dm_gx4/FilterOutput.h"
#define PI 3.14159

using namespace cv;
using namespace std;

float pitch = 0 ;
float roll = 0;
float compass = 0;

class ImageConverter
{
    ros::NodeHandle nh;
    image_transport::ImageTransport it;
    image_transport::Publisher image_pub;
    ros::Subscriber imu_sub;

public:
    ImageConverter(): it(nh)
    {
        image_pub = it.advertise("/thrust_vis", 1);
        imu_sub = nh.subscribe<imu_3dm_gx4::FilterOutput>("/imu/filter", 1, &ImageConverter::imuCB, this);
    }

    void imuCB(const imu_3dm_gx4::FilterOutput::ConstPtr& filter){
        float x,y,z,w;
        x=filter->orientation.x;
        y=filter->orientation.y;
        z=filter->orientation.z;
        w=filter->orientation.w;
        pitch = asin(2*(y*w-x*z));
        roll = atan((2*(x*w+y*z))/(x*x+y*y-z*z-w*w));
        update_diagram(pitch, roll);
    }
    void update_diagram(float pitch, float roll){

    }
};

int main(int argc, char** argv)
{
    ros::init(argc, argv, "image_converter");
    ImageConverter ic;
    ros::spin();
    return 0;
}
