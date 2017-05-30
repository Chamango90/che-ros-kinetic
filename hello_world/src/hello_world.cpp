#include<ros/ros.h>

int main(int argc,char** argv)
{
  ros::init(argc,argv,"hello_cpp");
  ROS_INFO("Welcome to ROS!");
  return 0;
}
