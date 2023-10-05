## *********************************************************
##
## File autogenerated for the opencv_apps package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'name': 'Default', 'type': '', 'state': True, 'cstate': 'true', 'id': 0, 'parent': 0, 'parameters': [{'name': 'use_camera_info', 'type': 'bool', 'default': False, 'level': 0, 'description': 'Indicates that the camera_info topic should be subscribed to to get the default input_frame_id. Otherwise the frame from the image message will be used.', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'canny_threshold', 'type': 'double', 'default': 200.0, 'level': 0, 'description': 'Canny threshold', 'min': 1.0, 'max': 255.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'accumulator_threshold', 'type': 'double', 'default': 50.0, 'level': 0, 'description': 'Accumulator threshold', 'min': 1.0, 'max': 200.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'gaussian_blur_size', 'type': 'int', 'default': 9, 'level': 0, 'description': 'the size of gaussian blur (should be odd number)', 'min': 1, 'max': 30, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'gaussian_sigma_x', 'type': 'double', 'default': 2.0, 'level': 0, 'description': 'sigma x of gaussian kernel', 'min': 1.0, 'max': 10.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'gaussian_sigma_y', 'type': 'double', 'default': 2.0, 'level': 0, 'description': 'sigma y of gaussian kernel', 'min': 1.0, 'max': 10.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'min_distance_between_circles', 'type': 'double', 'default': 0.0, 'level': 0, 'description': 'mnimum distance between the centers of the detected circles', 'min': 0.0, 'max': 1024.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'dp', 'type': 'double', 'default': 2.0, 'level': 0, 'description': 'dp', 'min': 0.0, 'max': 100.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'min_circle_radius', 'type': 'int', 'default': 0, 'level': 0, 'description': 'the minimum size of the circle', 'min': 0, 'max': 500, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'max_circle_radius', 'type': 'int', 'default': 0, 'level': 0, 'description': 'the maximum size of the circle', 'min': 0, 'max': 2000, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'debug_image_type', 'type': 'int', 'default': 0, 'level': 0, 'description': 'Select image type for debug output', 'min': 0, 'max': 2, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': "{'enum': [{'name': 'Input', 'type': 'int', 'value': 0, 'srcline': 53, 'srcfile': '/home/ubuntu/catkin_ws/src/opencv_apps/cfg/HoughCircles.cfg', 'description': 'Input image', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'Blur', 'type': 'int', 'value': 1, 'srcline': 54, 'srcfile': '/home/ubuntu/catkin_ws/src/opencv_apps/cfg/HoughCircles.cfg', 'description': 'GaussianBlur image', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'Canny', 'type': 'int', 'value': 2, 'srcline': 55, 'srcfile': '/home/ubuntu/catkin_ws/src/opencv_apps/cfg/HoughCircles.cfg', 'description': 'Canny edge image', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'An enum for debug view'}", 'ctype': 'int', 'cconsttype': 'const int'}], 'groups': [], 'srcline': 246, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT', 'parentclass': '', 'parentname': 'Default', 'field': 'default', 'upper': 'DEFAULT', 'lower': 'groups'}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

HoughCircles_Input = 0
HoughCircles_Blur = 1
HoughCircles_Canny = 2
