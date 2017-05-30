cmake_minimum_required(VERSION 2.8.3)
project(hello_world)

find_package(catkin REQUIRED COMPONENTS roscpp)

include_directories(include
  ${catkin_INCLUDE_DIRS}
)

add_executable(hello_world src/hello_world.cpp)

target_link_libraries(hello_world
  ${catkin_LIBRARIES}
)
