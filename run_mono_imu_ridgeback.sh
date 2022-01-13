#gnome-terminal -- bash -c "roscore;exec bash;"

gnome-terminal -- bash -c "roslaunch vins vins_rviz.launch;"

sleep 2

gnome-terminal -- bash -c "rosrun vins viwo_node_origin /home/houj/aliyun/vins_wheel/viw_ws/src/VIW-Fusion/config/realsense_d435i/realsense_stereo_imu_config_ridgeback.yaml;"
sleep 2

#optional
gnome-terminal -- bash -c "rosrun loop_fusion loop_fusion_node /home/houj/aliyun/vins_wheel/viw_ws/src/VIW-Fusion/config/realsense_d435i/realsense_stereo_imu_config_ridgeback.yaml;;"

sleep 3
gnome-terminal -- bash -c "rosbag play /media/houj/PortableSSD/ridgeback_dark.bag;"


