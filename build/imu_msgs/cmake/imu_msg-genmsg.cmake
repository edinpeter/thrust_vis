# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "imu_msg: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iimu_msg:/home/peter/thrust_vis/src/imu_msgs/msg;-Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(imu_msg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/peter/thrust_vis/src/imu_msgs/msg/pointMsg.msg" NAME_WE)
add_custom_target(_imu_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "imu_msg" "/home/peter/thrust_vis/src/imu_msgs/msg/pointMsg.msg" ""
)

get_filename_component(_filename "/home/peter/thrust_vis/src/imu_msgs/msg/statsMsg.msg" NAME_WE)
add_custom_target(_imu_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "imu_msg" "/home/peter/thrust_vis/src/imu_msgs/msg/statsMsg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(imu_msg
  "/home/peter/thrust_vis/src/imu_msgs/msg/pointMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu_msg
)
_generate_msg_cpp(imu_msg
  "/home/peter/thrust_vis/src/imu_msgs/msg/statsMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu_msg
)

### Generating Services

### Generating Module File
_generate_module_cpp(imu_msg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu_msg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(imu_msg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(imu_msg_generate_messages imu_msg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peter/thrust_vis/src/imu_msgs/msg/pointMsg.msg" NAME_WE)
add_dependencies(imu_msg_generate_messages_cpp _imu_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/thrust_vis/src/imu_msgs/msg/statsMsg.msg" NAME_WE)
add_dependencies(imu_msg_generate_messages_cpp _imu_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_msg_gencpp)
add_dependencies(imu_msg_gencpp imu_msg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_msg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(imu_msg
  "/home/peter/thrust_vis/src/imu_msgs/msg/pointMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu_msg
)
_generate_msg_eus(imu_msg
  "/home/peter/thrust_vis/src/imu_msgs/msg/statsMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu_msg
)

### Generating Services

### Generating Module File
_generate_module_eus(imu_msg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu_msg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(imu_msg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(imu_msg_generate_messages imu_msg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peter/thrust_vis/src/imu_msgs/msg/pointMsg.msg" NAME_WE)
add_dependencies(imu_msg_generate_messages_eus _imu_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/thrust_vis/src/imu_msgs/msg/statsMsg.msg" NAME_WE)
add_dependencies(imu_msg_generate_messages_eus _imu_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_msg_geneus)
add_dependencies(imu_msg_geneus imu_msg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_msg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(imu_msg
  "/home/peter/thrust_vis/src/imu_msgs/msg/pointMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu_msg
)
_generate_msg_lisp(imu_msg
  "/home/peter/thrust_vis/src/imu_msgs/msg/statsMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu_msg
)

### Generating Services

### Generating Module File
_generate_module_lisp(imu_msg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu_msg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(imu_msg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(imu_msg_generate_messages imu_msg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peter/thrust_vis/src/imu_msgs/msg/pointMsg.msg" NAME_WE)
add_dependencies(imu_msg_generate_messages_lisp _imu_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/thrust_vis/src/imu_msgs/msg/statsMsg.msg" NAME_WE)
add_dependencies(imu_msg_generate_messages_lisp _imu_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_msg_genlisp)
add_dependencies(imu_msg_genlisp imu_msg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_msg_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(imu_msg
  "/home/peter/thrust_vis/src/imu_msgs/msg/pointMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_msg
)
_generate_msg_py(imu_msg
  "/home/peter/thrust_vis/src/imu_msgs/msg/statsMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_msg
)

### Generating Services

### Generating Module File
_generate_module_py(imu_msg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_msg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(imu_msg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(imu_msg_generate_messages imu_msg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peter/thrust_vis/src/imu_msgs/msg/pointMsg.msg" NAME_WE)
add_dependencies(imu_msg_generate_messages_py _imu_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/thrust_vis/src/imu_msgs/msg/statsMsg.msg" NAME_WE)
add_dependencies(imu_msg_generate_messages_py _imu_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_msg_genpy)
add_dependencies(imu_msg_genpy imu_msg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_msg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu_msg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(imu_msg_generate_messages_cpp std_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu_msg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(imu_msg_generate_messages_eus std_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu_msg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(imu_msg_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_msg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_msg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu_msg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(imu_msg_generate_messages_py std_msgs_generate_messages_py)
