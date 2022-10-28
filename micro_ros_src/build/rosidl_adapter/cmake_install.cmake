# Install script for directory: /home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/src/rosidl/rosidl_adapter

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter/environment" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_environment_hooks/pythonpath.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter/environment" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_environment_hooks/pythonpath.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.10/site-packages/rosidl_adapter-3.1.3-py3.10.egg-info" TYPE DIRECTORY FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_python/rosidl_adapter/rosidl_adapter.egg-info/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.10/site-packages/rosidl_adapter" TYPE DIRECTORY FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/src/rosidl/rosidl_adapter/rosidl_adapter/" REGEX "/[^/]*\\.pyc$" EXCLUDE REGEX "/\\_\\_pycache\\_\\_$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(
        COMMAND
        "/home/xu/.espressif/python_env/idf4.4_py3.10_env/bin/python3.10" "-m" "compileall"
        "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/install/lib/python3.10/site-packages/rosidl_adapter"
      )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/rosidl_adapter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/rosidl_adapter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter/environment" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_dev/install/ament_cmake_core/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter/environment" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter/environment" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_dev/install/ament_cmake_core/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter/environment" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_environment_hooks/path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_environment_hooks/local_setup.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_environment_hooks/local_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_environment_hooks/package.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_index/share/ament_index/resource_index/packages/rosidl_adapter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter/cmake" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/src/rosidl/rosidl_adapter/rosidl_adapter-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter/cmake" TYPE FILE FILES
    "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_core/rosidl_adapterConfig.cmake"
    "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/ament_cmake_core/rosidl_adapterConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter" TYPE FILE FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/src/rosidl/rosidl_adapter/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_adapter" TYPE DIRECTORY FILES "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/src/rosidl/rosidl_adapter/cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rosidl_adapter" TYPE PROGRAM FILES
    "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/src/rosidl/rosidl_adapter/scripts/msg2idl.py"
    "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/src/rosidl/rosidl_adapter/scripts/srv2idl.py"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/rosidl_adapter/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
