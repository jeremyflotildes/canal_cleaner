# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/share/orocos_kdl/cmake/../../../include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/share/orocos_kdl/cmake/../../../include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "geometry_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lkdl_conversions;-lorocos-kdl".split(';') if "-lkdl_conversions;-lorocos-kdl" != "" else []
PROJECT_NAME = "kdl_conversions"
PROJECT_SPACE_DIR = "/home/ubuntu/catkin_ws/install"
PROJECT_VERSION = "1.13.2"