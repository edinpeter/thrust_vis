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
#include "sensor_msgs/Joy.h"
#define PI 3.14159

//These make life easier.
using namespace cv;
using namespace std;

float pitch = 0 ;
float roll = 0;
float compass = 0;
Mat diag(600,500,CV_8UC3, Scalar(255,255,255));

/*
    Special case things that don't generally apply.
*/
std_msgs::Header header;
cv_bridge::CvImage img_bridge;
sensor_msgs::Image img_msg;

class thrust_vis
{
    ros::NodeHandle nh;
    image_transport::ImageTransport it;
    image_transport::Publisher image_pub;
    ros::Subscriber imu_sub;
    ros::Subscriber updSub;
    ros::Subscriber joySub;

public:
    thrust_vis(): it(nh)
    {
        /*
            Publishing is pretty straightforward, you give a publisher object a topic name, and a buffer size.
        */
        image_pub = it.advertise("/thrust_vis", 1);
        /*
            Subscribing is simple. Assign the variable to the return of the function call in the form:

            arbitrary_nodehandle_name.subscribe<message type with class>("topic string to subscribe to",buffer_size (ususally 1 for efficiency)
                ,callback method inside the class, CB arguments (usually only "this"))
        */
        imu_sub = nh.subscribe<imu_3dm_gx4::FilterOutput>("/imu/filter", 1, &thrust_vis::imuCB, this);
        updSub = nh.subscribe<std_msgs::Float32>("update",1,&thrust_vis::updateCB, this);
        joySub = nh.subscribe<sensor_msgs::Joy>("joy", 1, &thrust_vis::joyCB, this);
    }
    /*
        Each of the below functions are "callbacks", basically what this node does in response to a different node
        broadcasting a message. The argument is the message. Each has a different type with different 
        members, for example joy which consists of two arrays. Most messages have good documentation
        on their members.Each message is preceeded with "const" to show that it's a read only object.
    */
    void joyCB(const sensor_msgs::Joy::ConstPtr& joy_msg){

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
    /*
        Non-callback methods can be in here and also outside of the class. Just a preference.
    */
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
    //Straightforward set of functions making a super crude opencv drawing.
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

    void start(){
        ros::Rate hz(30);
        while(ros::ok()){
            ros::spinOnce();
            hz.sleep();
        }
    }

    };

    int main(int argc, char** argv)
    {
        //Initialize a node with identity "thrust_vis". This name really
        //only comes up with the command rosnode list
        ros::init(argc, argv, "thrust_vis");
        /*
            Create an object of type thrust_vis with an arbitrary name, this puts all of the 
            topics into ROS.

            ** This doesn't have to be a pointer, code that will also work:

                thrust_vis tv;
                tv.create_diagram();

        */
        thrust_vis *tv = new thrust_vis();
        tv->create_diagram();
        tv->start();
        return 0;
    }
