FROM ros:kinetic-ros-base 
 
# Create ROS workspace
RUN . /opt/ros/kinetic/setup.sh \
 && mkdir -p /catkin_ws/src \
 && cd /catkin_ws/src \
 && catkin_init_workspace \
 && ln -s /projects /catkin_ws/src/projects

WORKDIR /projects 

CMD tail -f /dev/null
