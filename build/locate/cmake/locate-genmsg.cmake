# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "locate: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ilocate:/workspace_beidou/src/locate/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(locate_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/workspace_beidou/src/locate/msg/navigate_and_imu_data.msg" NAME_WE)
add_custom_target(_locate_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "locate" "/workspace_beidou/src/locate/msg/navigate_and_imu_data.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(locate
  "/workspace_beidou/src/locate/msg/navigate_and_imu_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locate
)

### Generating Services

### Generating Module File
_generate_module_cpp(locate
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locate
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(locate_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(locate_generate_messages locate_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace_beidou/src/locate/msg/navigate_and_imu_data.msg" NAME_WE)
add_dependencies(locate_generate_messages_cpp _locate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locate_gencpp)
add_dependencies(locate_gencpp locate_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locate_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(locate
  "/workspace_beidou/src/locate/msg/navigate_and_imu_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locate
)

### Generating Services

### Generating Module File
_generate_module_eus(locate
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locate
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(locate_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(locate_generate_messages locate_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace_beidou/src/locate/msg/navigate_and_imu_data.msg" NAME_WE)
add_dependencies(locate_generate_messages_eus _locate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locate_geneus)
add_dependencies(locate_geneus locate_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locate_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(locate
  "/workspace_beidou/src/locate/msg/navigate_and_imu_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locate
)

### Generating Services

### Generating Module File
_generate_module_lisp(locate
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locate
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(locate_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(locate_generate_messages locate_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace_beidou/src/locate/msg/navigate_and_imu_data.msg" NAME_WE)
add_dependencies(locate_generate_messages_lisp _locate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locate_genlisp)
add_dependencies(locate_genlisp locate_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locate_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(locate
  "/workspace_beidou/src/locate/msg/navigate_and_imu_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locate
)

### Generating Services

### Generating Module File
_generate_module_nodejs(locate
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locate
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(locate_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(locate_generate_messages locate_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace_beidou/src/locate/msg/navigate_and_imu_data.msg" NAME_WE)
add_dependencies(locate_generate_messages_nodejs _locate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locate_gennodejs)
add_dependencies(locate_gennodejs locate_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locate_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(locate
  "/workspace_beidou/src/locate/msg/navigate_and_imu_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locate
)

### Generating Services

### Generating Module File
_generate_module_py(locate
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locate
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(locate_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(locate_generate_messages locate_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace_beidou/src/locate/msg/navigate_and_imu_data.msg" NAME_WE)
add_dependencies(locate_generate_messages_py _locate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(locate_genpy)
add_dependencies(locate_genpy locate_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS locate_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locate)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/locate
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(locate_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locate)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/locate
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(locate_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locate)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/locate
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(locate_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locate)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/locate
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(locate_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locate)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locate\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/locate
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(locate_generate_messages_py std_msgs_generate_messages_py)
endif()
