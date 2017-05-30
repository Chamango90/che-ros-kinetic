FROM ros:kinetic-ros-core 
 
# Create ROS workspace
RUN . /opt/ros/kinetic/setup.sh \
 && mkdir -p ~/catkin_ws/src \
 && cd ~/catkin_ws/src \
 && catkin_init_workspace \
 && ln -s /projects ~/catkin_ws/src/projects 
 
# Source ROS workspace
RUN /bin/bash -c "echo 'source /opt/ros/kinetic/setup.bash' >> ~/.bashrc \
 && echo 'source ~/catkin_ws/devel/setup.bash' >> ~/.bashrc \
 && source ~/.bashrc"           
 
 # Install support tools
 RUN apt-get update && apt-get install --no-install-recommends -y \
  iputils-ping \ 
  net-tools \ 
  vim \
 && rm -rf /var/lib/apt/lists/

WORKDIR /projects 

CMD tail -f /dev/null
