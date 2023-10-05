# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "extended_object_detection: 9 messages, 1 services")

set(MSG_I_FLAGS "-Iextended_object_detection:/home/ubuntu/catkin_ws/src/extended_object_detection/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(extended_object_detection_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg" NAME_WE)
add_custom_target(_extended_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "extended_object_detection" "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg" NAME_WE)
add_custom_target(_extended_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "extended_object_detection" "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg" "geometry_msgs/Vector3:extended_object_detection/ImagePoint"
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg" NAME_WE)
add_custom_target(_extended_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "extended_object_detection" "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg" NAME_WE)
add_custom_target(_extended_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "extended_object_detection" "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg" NAME_WE)
add_custom_target(_extended_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "extended_object_detection" "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg" "geometry_msgs/Vector3:extended_object_detection/ImagePoint"
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg" NAME_WE)
add_custom_target(_extended_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "extended_object_detection" "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg" "extended_object_detection/Track:extended_object_detection/Rect:geometry_msgs/Transform:extended_object_detection/Contour:geometry_msgs/Quaternion:extended_object_detection/ImagePoint:extended_object_detection/ExtractedInfo:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObjectArray.msg" NAME_WE)
add_custom_target(_extended_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "extended_object_detection" "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObjectArray.msg" "extended_object_detection/SimpleObject:extended_object_detection/Track:std_msgs/Header:extended_object_detection/Rect:geometry_msgs/Transform:extended_object_detection/Contour:geometry_msgs/Quaternion:extended_object_detection/ImagePoint:extended_object_detection/ExtractedInfo:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg" NAME_WE)
add_custom_target(_extended_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "extended_object_detection" "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg" "extended_object_detection/SimpleObject:extended_object_detection/Track:extended_object_detection/Rect:geometry_msgs/Transform:extended_object_detection/Contour:geometry_msgs/Quaternion:extended_object_detection/ImagePoint:extended_object_detection/ExtractedInfo:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObjectArray.msg" NAME_WE)
add_custom_target(_extended_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "extended_object_detection" "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObjectArray.msg" "extended_object_detection/SimpleObject:extended_object_detection/Track:std_msgs/Header:extended_object_detection/Rect:geometry_msgs/Transform:extended_object_detection/ComplexObject:extended_object_detection/Contour:geometry_msgs/Quaternion:extended_object_detection/ImagePoint:extended_object_detection/ExtractedInfo:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/srv/SetSimpleObjects.srv" NAME_WE)
add_custom_target(_extended_object_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "extended_object_detection" "/home/ubuntu/catkin_ws/src/extended_object_detection/srv/SetSimpleObjects.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_cpp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_cpp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_cpp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_cpp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_cpp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_cpp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_cpp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_cpp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/extended_object_detection
)

### Generating Services
_generate_srv_cpp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/srv/SetSimpleObjects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/extended_object_detection
)

### Generating Module File
_generate_module_cpp(extended_object_detection
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/extended_object_detection
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(extended_object_detection_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(extended_object_detection_generate_messages extended_object_detection_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_cpp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_cpp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_cpp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_cpp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_cpp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_cpp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObjectArray.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_cpp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_cpp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObjectArray.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_cpp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/srv/SetSimpleObjects.srv" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_cpp _extended_object_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(extended_object_detection_gencpp)
add_dependencies(extended_object_detection_gencpp extended_object_detection_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS extended_object_detection_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/extended_object_detection
)
_generate_msg_eus(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/extended_object_detection
)
_generate_msg_eus(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/extended_object_detection
)
_generate_msg_eus(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/extended_object_detection
)
_generate_msg_eus(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/extended_object_detection
)
_generate_msg_eus(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/extended_object_detection
)
_generate_msg_eus(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/extended_object_detection
)
_generate_msg_eus(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/extended_object_detection
)
_generate_msg_eus(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/extended_object_detection
)

### Generating Services
_generate_srv_eus(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/srv/SetSimpleObjects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/extended_object_detection
)

### Generating Module File
_generate_module_eus(extended_object_detection
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/extended_object_detection
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(extended_object_detection_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(extended_object_detection_generate_messages extended_object_detection_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_eus _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_eus _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_eus _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_eus _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_eus _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_eus _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObjectArray.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_eus _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_eus _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObjectArray.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_eus _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/srv/SetSimpleObjects.srv" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_eus _extended_object_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(extended_object_detection_geneus)
add_dependencies(extended_object_detection_geneus extended_object_detection_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS extended_object_detection_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_lisp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_lisp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_lisp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_lisp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_lisp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_lisp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_lisp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/extended_object_detection
)
_generate_msg_lisp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/extended_object_detection
)

### Generating Services
_generate_srv_lisp(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/srv/SetSimpleObjects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/extended_object_detection
)

### Generating Module File
_generate_module_lisp(extended_object_detection
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/extended_object_detection
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(extended_object_detection_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(extended_object_detection_generate_messages extended_object_detection_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_lisp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_lisp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_lisp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_lisp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_lisp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_lisp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObjectArray.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_lisp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_lisp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObjectArray.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_lisp _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/srv/SetSimpleObjects.srv" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_lisp _extended_object_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(extended_object_detection_genlisp)
add_dependencies(extended_object_detection_genlisp extended_object_detection_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS extended_object_detection_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/extended_object_detection
)
_generate_msg_nodejs(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/extended_object_detection
)
_generate_msg_nodejs(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/extended_object_detection
)
_generate_msg_nodejs(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/extended_object_detection
)
_generate_msg_nodejs(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/extended_object_detection
)
_generate_msg_nodejs(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/extended_object_detection
)
_generate_msg_nodejs(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/extended_object_detection
)
_generate_msg_nodejs(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/extended_object_detection
)
_generate_msg_nodejs(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/extended_object_detection
)

### Generating Services
_generate_srv_nodejs(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/srv/SetSimpleObjects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/extended_object_detection
)

### Generating Module File
_generate_module_nodejs(extended_object_detection
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/extended_object_detection
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(extended_object_detection_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(extended_object_detection_generate_messages extended_object_detection_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_nodejs _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_nodejs _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_nodejs _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_nodejs _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_nodejs _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_nodejs _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObjectArray.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_nodejs _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_nodejs _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObjectArray.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_nodejs _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/srv/SetSimpleObjects.srv" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_nodejs _extended_object_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(extended_object_detection_gennodejs)
add_dependencies(extended_object_detection_gennodejs extended_object_detection_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS extended_object_detection_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/extended_object_detection
)
_generate_msg_py(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/extended_object_detection
)
_generate_msg_py(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/extended_object_detection
)
_generate_msg_py(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/extended_object_detection
)
_generate_msg_py(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/extended_object_detection
)
_generate_msg_py(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/extended_object_detection
)
_generate_msg_py(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/extended_object_detection
)
_generate_msg_py(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/extended_object_detection
)
_generate_msg_py(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg;/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/extended_object_detection
)

### Generating Services
_generate_srv_py(extended_object_detection
  "/home/ubuntu/catkin_ws/src/extended_object_detection/srv/SetSimpleObjects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/extended_object_detection
)

### Generating Module File
_generate_module_py(extended_object_detection
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/extended_object_detection
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(extended_object_detection_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(extended_object_detection_generate_messages extended_object_detection_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ImagePoint.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_py _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Rect.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_py _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Track.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_py _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ExtractedInfo.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_py _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/Contour.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_py _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObject.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_py _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/SimpleObjectArray.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_py _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObject.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_py _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/msg/ComplexObjectArray.msg" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_py _extended_object_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/extended_object_detection/srv/SetSimpleObjects.srv" NAME_WE)
add_dependencies(extended_object_detection_generate_messages_py _extended_object_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(extended_object_detection_genpy)
add_dependencies(extended_object_detection_genpy extended_object_detection_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS extended_object_detection_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/extended_object_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/extended_object_detection
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(extended_object_detection_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(extended_object_detection_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/extended_object_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/extended_object_detection
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(extended_object_detection_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(extended_object_detection_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/extended_object_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/extended_object_detection
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(extended_object_detection_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(extended_object_detection_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/extended_object_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/extended_object_detection
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(extended_object_detection_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(extended_object_detection_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/extended_object_detection)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/extended_object_detection\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/extended_object_detection
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(extended_object_detection_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(extended_object_detection_generate_messages_py geometry_msgs_generate_messages_py)
endif()
