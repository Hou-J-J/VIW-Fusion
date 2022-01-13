#gnome-terminal -- bash -c "roscore;exec bash;"

gnome-terminal -- bash -c "roslaunch vins vins_rviz.launch;"

sleep 2

gnome-terminal -- bash -c "rosrun vins viwo_node /home/houj/aliyun/vins_wheel/viw_ws/src/VIW-Fusion/config/haikang/haikang_viw.yaml;"
sleep 2

#optional
gnome-terminal -- bash -c "rosrun loop_fusion loop_fusion_node /home/houj/aliyun/vins_wheel/viw_ws/src/VIW-Fusion/config/haikang/haikang_viw.yaml;"

sleep 3
gnome-terminal -- bash -c "rosbag play -s 1 /media/houj/ZX1_512G/dataset/myself/lab_with_haikang_camera/cam_imu_wheel_1.bag;"



