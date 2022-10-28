set(_AMENT_PACKAGE_NAME "rclc")
set(rclc_VERSION "4.0.1")
set(rclc_MAINTAINER "Jan Staschulat <jan.staschulat@de.bosch.com>, Pablo Garrido <pablogarrido@eprosima.com>")
set(rclc_BUILD_DEPENDS "rcl" "rcl_action" "rcutils" "rosidl_generator_c" "rosidl_typesupport_c")
set(rclc_BUILDTOOL_DEPENDS "ament_cmake_ros")
set(rclc_BUILD_EXPORT_DEPENDS "rcl_action")
set(rclc_BUILDTOOL_EXPORT_DEPENDS )
set(rclc_EXEC_DEPENDS "rcl" "rcutils" "rosidl_generator_c")
set(rclc_TEST_DEPENDS "ament_cmake_gtest" "ament_cmake_pytest" "ament_lint_auto" "ament_lint_common" "launch_testing" "osrf_testing_tools_cpp" "std_msgs" "test_msgs" "example_interfaces" "rclcpp" "rclcpp_action")
set(rclc_GROUP_DEPENDS )
set(rclc_MEMBER_OF_GROUPS )
set(rclc_DEPRECATED "")
set(rclc_EXPORT_TAGS)
list(APPEND rclc_EXPORT_TAGS "<build_type>ament_cmake</build_type>")
