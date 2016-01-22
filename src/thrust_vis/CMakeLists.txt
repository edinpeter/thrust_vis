cmake_minimum_required(VERSION 2.8.3)
project(thrust_vis)

find_package(OpenCV REQUIRED)

find_package(catkin REQUIRED COMPONENTS
roscpp
image_transport
cv_bridge
rosconsole
sensor_msgs
imu_msg
)

catkin_package()
include_directories(include ${catkin_INCLUDE_DIRS} ${OpenCV_INCLUDE_DIRS} ${Eigen_INCLUDE_DIRS} )

add_executable(thrust_vis src/thrust_vis.cpp)

target_link_libraries(thrust_vis ${catkin_LIBRARIES} ${OpenCV_LIBS} ${OpenCV_LIBRARIES} ${Eigen_LIBRARIES} ${QT_LIBRARIES} ${ROS_LIBRARIES} ${catkin_LIBRARIES})
