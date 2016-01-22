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
Mat diag(600,500,CV_8UC3, Scalar(255,255,255));

std_msgs::Header header;
cv_bridge::CvImage img_bridge;
sensor_msgs::Image img_msg;

class ImageConverter
{
    ros::NodeHandle nh;
    image_transport::ImageTransport it;
    image_transport::Publisher image_pub;
    ros::Subscriber imu_sub;
    ros::Subscriber updSub;

public:
    ImageConverter(): it(nh)
    {
        image_pub = it.advertise("/thrust_vis", 1);
        imu_sub = nh.subscribe<imu_3dm_gx4::FilterOutput>("/imu/filter", 1, &ImageConverter::imuCB, this);
        updSub = nh.subscribe<std_msgs::Float32>("update",1,&ImageConverter::updateCB, this);
   }
    void updateCB(const std_msgs::Float32::ConstPtr& val){
        update_diagram(val->data);
        ROS_INFO("Creating diagram");
    }
    void imuCB(const imu_3dm_gx4::FilterOutput::ConstPtr& filter){
        float x,y,z,w;
        x=filter->orientation.x;
        y=filter->orientation.y;
        z=filter->orientation.z;
        w=filter->orientation.w;
        pitch = asin(2*(y*w-x*z));
        roll = atan((2*(x*w+y*z))/(x*x+y*y-z*z-w*w));
    }
    void update_diagram(float power){

        if(power < 1){
            rectangle(diag, Point(303,275),Point(322, 275 + (-1 * power * ((383.0 - 278)/100.0))),Scalar(0,0,200),-1);
        }
        else if(power > 1){
            rectangle(diag, Point(303,275),Point(322, 275 - power * ((383.0 - 278)/100.0)),Scalar(200,0,0),-1);
        }

        img_bridge = cv_bridge::CvImage(header, sensor_msgs::image_encodings::RGB8, diag);
        img_bridge.toImageMsg(img_msg);
        image_pub.publish(img_msg);
        create_diagram();
    }
    void create_diagram(){
        rectangle(diag, Point(100,100),Point(200,450),Scalar(0,0,0),2);
        /*
            Front two vertical thrusters
        */
        rectangle(diag, Point(100,125), Point(65,165), Scalar(0,0,0),2);
        rectangle(diag, Point(200,125), Point(235,165), Scalar(0,0,0),2);
        /*
            Back two vertical thrusters
        */
        rectangle(diag,Point(100,425),Point(65,385), Scalar(0,0,0),2);
        rectangle(diag,Point(200,425),Point(235,385), Scalar(0,0,0),2);
        /*
            Forward / Backwards Thrust
        */
        rectangle(diag,Point(300,165),Point(325,385),Scalar(0,0,0),2);
        /*
            clears the thrust meter
        */
        rectangle(diag,Point(303,167),Point(322,383),Scalar(255,255,255),-1);


        putText(diag,"Forwards", Point(340, 185), 1, 1.15, Scalar(255,0,0),2);
        putText(diag,"Backwards", Point(340, 365), 1, 1.15, Scalar(0,0,255),2);
    }
};

int main(int argc, char** argv)
{
    ros::init(argc, argv, "image_converter");
    ImageConverter ic;
    ic.create_diagram();
    ros::spin();
    return 0;
}
