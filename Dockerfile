FROM ros:kinetic-ros-core 
 
# Create ROS workspace
RUN . /opt/ros/kinetic/setup.sh \
 && mkdir -p ~/catkin_ws/src \
 && cd ~/catkin_ws/src \
 && catkin_init_workspace \
 && ln -s /projects ~/catkin_ws/src/projects        
 
 # Install support tools
 RUN apt-get update && apt-get install --no-install-recommends -y \
  iputils-ping \ 
  net-tools \ 
  vim \
 && rm -rf /var/lib/apt/lists/

WORKDIR /projects 

# setup entrypoint
COPY ./catkin_ws_entrypoint.sh /

#ENTRYPOINT ["/catkin_ws_entrypoint.sh"]
CMD /catkin_ws_entrypoint.sh && tail -f /dev/null
