# CMake generated Testfile for 
# Source directory: /home/ubuntu/catkin_ws/src/geometry/tf_conversions
# Build directory: /home/ubuntu/catkin_ws/build/geometry/tf_conversions
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_tf_conversions_gtest_test_eigen_tf "/home/ubuntu/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/build/test_results/tf_conversions/gtest-test_eigen_tf.xml" "--return-code" "/home/ubuntu/catkin_ws/devel/lib/tf_conversions/test_eigen_tf --gtest_output=xml:/home/ubuntu/catkin_ws/build/test_results/tf_conversions/gtest-test_eigen_tf.xml")
set_tests_properties(_ctest_tf_conversions_gtest_test_eigen_tf PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/ubuntu/catkin_ws/src/geometry/tf_conversions/CMakeLists.txt;33;catkin_add_gtest;/home/ubuntu/catkin_ws/src/geometry/tf_conversions/CMakeLists.txt;0;")
add_test(_ctest_tf_conversions_gtest_test_kdl_tf "/home/ubuntu/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/build/test_results/tf_conversions/gtest-test_kdl_tf.xml" "--return-code" "/home/ubuntu/catkin_ws/devel/lib/tf_conversions/test_kdl_tf --gtest_output=xml:/home/ubuntu/catkin_ws/build/test_results/tf_conversions/gtest-test_kdl_tf.xml")
set_tests_properties(_ctest_tf_conversions_gtest_test_kdl_tf PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/ubuntu/catkin_ws/src/geometry/tf_conversions/CMakeLists.txt;36;catkin_add_gtest;/home/ubuntu/catkin_ws/src/geometry/tf_conversions/CMakeLists.txt;0;")
add_test(_ctest_tf_conversions_nosetests_test.posemath.py "/home/ubuntu/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/build/test_results/tf_conversions/nosetests-test.posemath.py.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/ubuntu/catkin_ws/build/test_results/tf_conversions" "/usr/bin/nosetests3 -P --process-timeout=60 /home/ubuntu/catkin_ws/src/geometry/tf_conversions/test/posemath.py --with-xunit --xunit-file=/home/ubuntu/catkin_ws/build/test_results/tf_conversions/nosetests-test.posemath.py.xml")
set_tests_properties(_ctest_tf_conversions_nosetests_test.posemath.py PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/ubuntu/catkin_ws/src/geometry/tf_conversions/CMakeLists.txt;42;catkin_add_nosetests;/home/ubuntu/catkin_ws/src/geometry/tf_conversions/CMakeLists.txt;0;")
