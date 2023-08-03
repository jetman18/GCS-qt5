QT += quick network

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp \
        source/cpp/messageproces.cpp \
        source/cpp/udp_link.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    source/cpp/MAVLink/.vscode/settings.json

HEADERS += \
    source/cpp/MAVLink/checksum.h \
    source/cpp/MAVLink/common/common.h \
    source/cpp/MAVLink/common/mavlink.h \
    source/cpp/MAVLink/common/mavlink_msg_actuator_control_target.h \
    source/cpp/MAVLink/common/mavlink_msg_att_pos_mocap.h \
    source/cpp/MAVLink/common/mavlink_msg_attitude.h \
    source/cpp/MAVLink/common/mavlink_msg_attitude_quaternion.h \
    source/cpp/MAVLink/common/mavlink_msg_attitude_quaternion_cov.h \
    source/cpp/MAVLink/common/mavlink_msg_attitude_target.h \
    source/cpp/MAVLink/common/mavlink_msg_auth_key.h \
    source/cpp/MAVLink/common/mavlink_msg_autopilot_version.h \
    source/cpp/MAVLink/common/mavlink_msg_battery_status.h \
    source/cpp/MAVLink/common/mavlink_msg_camera_trigger.h \
    source/cpp/MAVLink/common/mavlink_msg_change_operator_control.h \
    source/cpp/MAVLink/common/mavlink_msg_change_operator_control_ack.h \
    source/cpp/MAVLink/common/mavlink_msg_command_ack.h \
    source/cpp/MAVLink/common/mavlink_msg_command_int.h \
    source/cpp/MAVLink/common/mavlink_msg_command_long.h \
    source/cpp/MAVLink/common/mavlink_msg_data_stream.h \
    source/cpp/MAVLink/common/mavlink_msg_data_transmission_handshake.h \
    source/cpp/MAVLink/common/mavlink_msg_debug.h \
    source/cpp/MAVLink/common/mavlink_msg_debug_vect.h \
    source/cpp/MAVLink/common/mavlink_msg_distance_sensor.h \
    source/cpp/MAVLink/common/mavlink_msg_encapsulated_data.h \
    source/cpp/MAVLink/common/mavlink_msg_file_transfer_protocol.h \
    source/cpp/MAVLink/common/mavlink_msg_global_position_int.h \
    source/cpp/MAVLink/common/mavlink_msg_global_position_int_cov.h \
    source/cpp/MAVLink/common/mavlink_msg_global_vision_position_estimate.h \
    source/cpp/MAVLink/common/mavlink_msg_gps2_raw.h \
    source/cpp/MAVLink/common/mavlink_msg_gps2_rtk.h \
    source/cpp/MAVLink/common/mavlink_msg_gps_global_origin.h \
    source/cpp/MAVLink/common/mavlink_msg_gps_inject_data.h \
    source/cpp/MAVLink/common/mavlink_msg_gps_raw_int.h \
    source/cpp/MAVLink/common/mavlink_msg_gps_rtk.h \
    source/cpp/MAVLink/common/mavlink_msg_gps_status.h \
    source/cpp/MAVLink/common/mavlink_msg_heartbeat.h \
    source/cpp/MAVLink/common/mavlink_msg_highres_imu.h \
    source/cpp/MAVLink/common/mavlink_msg_hil_controls.h \
    source/cpp/MAVLink/common/mavlink_msg_hil_gps.h \
    source/cpp/MAVLink/common/mavlink_msg_hil_optical_flow.h \
    source/cpp/MAVLink/common/mavlink_msg_hil_rc_inputs_raw.h \
    source/cpp/MAVLink/common/mavlink_msg_hil_sensor.h \
    source/cpp/MAVLink/common/mavlink_msg_hil_state.h \
    source/cpp/MAVLink/common/mavlink_msg_hil_state_quaternion.h \
    source/cpp/MAVLink/common/mavlink_msg_local_position_ned.h \
    source/cpp/MAVLink/common/mavlink_msg_local_position_ned_cov.h \
    source/cpp/MAVLink/common/mavlink_msg_local_position_ned_system_global_offset.h \
    source/cpp/MAVLink/common/mavlink_msg_log_data.h \
    source/cpp/MAVLink/common/mavlink_msg_log_entry.h \
    source/cpp/MAVLink/common/mavlink_msg_log_erase.h \
    source/cpp/MAVLink/common/mavlink_msg_log_request_data.h \
    source/cpp/MAVLink/common/mavlink_msg_log_request_end.h \
    source/cpp/MAVLink/common/mavlink_msg_log_request_list.h \
    source/cpp/MAVLink/common/mavlink_msg_manual_control.h \
    source/cpp/MAVLink/common/mavlink_msg_manual_setpoint.h \
    source/cpp/MAVLink/common/mavlink_msg_memory_vect.h \
    source/cpp/MAVLink/common/mavlink_msg_mission_ack.h \
    source/cpp/MAVLink/common/mavlink_msg_mission_clear_all.h \
    source/cpp/MAVLink/common/mavlink_msg_mission_count.h \
    source/cpp/MAVLink/common/mavlink_msg_mission_current.h \
    source/cpp/MAVLink/common/mavlink_msg_mission_item.h \
    source/cpp/MAVLink/common/mavlink_msg_mission_item_int.h \
    source/cpp/MAVLink/common/mavlink_msg_mission_item_reached.h \
    source/cpp/MAVLink/common/mavlink_msg_mission_request.h \
    source/cpp/MAVLink/common/mavlink_msg_mission_request_list.h \
    source/cpp/MAVLink/common/mavlink_msg_mission_request_partial_list.h \
    source/cpp/MAVLink/common/mavlink_msg_mission_set_current.h \
    source/cpp/MAVLink/common/mavlink_msg_mission_write_partial_list.h \
    source/cpp/MAVLink/common/mavlink_msg_named_value_float.h \
    source/cpp/MAVLink/common/mavlink_msg_named_value_int.h \
    source/cpp/MAVLink/common/mavlink_msg_nav_controller_output.h \
    source/cpp/MAVLink/common/mavlink_msg_optical_flow.h \
    source/cpp/MAVLink/common/mavlink_msg_optical_flow_rad.h \
    source/cpp/MAVLink/common/mavlink_msg_param_map_rc.h \
    source/cpp/MAVLink/common/mavlink_msg_param_request_list.h \
    source/cpp/MAVLink/common/mavlink_msg_param_request_read.h \
    source/cpp/MAVLink/common/mavlink_msg_param_set.h \
    source/cpp/MAVLink/common/mavlink_msg_param_value.h \
    source/cpp/MAVLink/common/mavlink_msg_ping.h \
    source/cpp/MAVLink/common/mavlink_msg_position_target_global_int.h \
    source/cpp/MAVLink/common/mavlink_msg_position_target_local_ned.h \
    source/cpp/MAVLink/common/mavlink_msg_power_status.h \
    source/cpp/MAVLink/common/mavlink_msg_radio_status.h \
    source/cpp/MAVLink/common/mavlink_msg_raw_imu.h \
    source/cpp/MAVLink/common/mavlink_msg_raw_pressure.h \
    source/cpp/MAVLink/common/mavlink_msg_rc_channels.h \
    source/cpp/MAVLink/common/mavlink_msg_rc_channels_override.h \
    source/cpp/MAVLink/common/mavlink_msg_rc_channels_raw.h \
    source/cpp/MAVLink/common/mavlink_msg_rc_channels_scaled.h \
    source/cpp/MAVLink/common/mavlink_msg_request_data_stream.h \
    source/cpp/MAVLink/common/mavlink_msg_safety_allowed_area.h \
    source/cpp/MAVLink/common/mavlink_msg_safety_set_allowed_area.h \
    source/cpp/MAVLink/common/mavlink_msg_scaled_imu.h \
    source/cpp/MAVLink/common/mavlink_msg_scaled_imu2.h \
    source/cpp/MAVLink/common/mavlink_msg_scaled_imu3.h \
    source/cpp/MAVLink/common/mavlink_msg_scaled_pressure.h \
    source/cpp/MAVLink/common/mavlink_msg_scaled_pressure2.h \
    source/cpp/MAVLink/common/mavlink_msg_serial_control.h \
    source/cpp/MAVLink/common/mavlink_msg_servo_output_raw.h \
    source/cpp/MAVLink/common/mavlink_msg_set_actuator_control_target.h \
    source/cpp/MAVLink/common/mavlink_msg_set_attitude_target.h \
    source/cpp/MAVLink/common/mavlink_msg_set_gps_global_origin.h \
    source/cpp/MAVLink/common/mavlink_msg_set_mode.h \
    source/cpp/MAVLink/common/mavlink_msg_set_position_target_global_int.h \
    source/cpp/MAVLink/common/mavlink_msg_set_position_target_local_ned.h \
    source/cpp/MAVLink/common/mavlink_msg_sim_state.h \
    source/cpp/MAVLink/common/mavlink_msg_statustext.h \
    source/cpp/MAVLink/common/mavlink_msg_sys_status.h \
    source/cpp/MAVLink/common/mavlink_msg_system_time.h \
    source/cpp/MAVLink/common/mavlink_msg_terrain_check.h \
    source/cpp/MAVLink/common/mavlink_msg_terrain_data.h \
    source/cpp/MAVLink/common/mavlink_msg_terrain_report.h \
    source/cpp/MAVLink/common/mavlink_msg_terrain_request.h \
    source/cpp/MAVLink/common/mavlink_msg_timesync.h \
    source/cpp/MAVLink/common/mavlink_msg_v2_extension.h \
    source/cpp/MAVLink/common/mavlink_msg_vfr_hud.h \
    source/cpp/MAVLink/common/mavlink_msg_vicon_position_estimate.h \
    source/cpp/MAVLink/common/mavlink_msg_vision_position_estimate.h \
    source/cpp/MAVLink/common/mavlink_msg_vision_speed_estimate.h \
    source/cpp/MAVLink/common/testsuite.h \
    source/cpp/MAVLink/common/version.h \
    source/cpp/MAVLink/mavlink_conversions.h \
    source/cpp/MAVLink/mavlink_helpers.h \
    source/cpp/MAVLink/mavlink_types.h \
    source/cpp/MAVLink/protocol.h \
    source/cpp/messageproces.h \
    source/cpp/udp_link.h
