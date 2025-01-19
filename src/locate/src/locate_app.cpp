#include "ros/ros.h"
#include "std_msgs/String.h"
#include <string>

#include "locate/navigate_data_reader/navigate_data_reader.h"
#include "locate/utils/using_csv.h"

int main(int argc, char **argv)
{
    using NAVIGATE_DATA_READER                      = LOCATE::NAVIGATE_DATA_READER::navigate_and_imu_reader;
    // using LOAD_NAVIGATE_CONFIG                      = LOCATE::UTILS::load_config;
    
    
    // 初始化ROS节点
    ros::init(argc, argv, "talker");

    // 创建一个节点句柄
    ros::NodeHandle n;

    // 创建一个Publisher，发布到'chatter'话题，消息类型为String
    ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);

    // 设置循环频率
    ros::Rate loop_rate(10);

    std::string locate_config_info;
    n.getParam("/serial_port", locate_config_info);
    std::cout << "locate_config_info : " << locate_config_info << std::endl;

    NAVIGATE_DATA_READER navigate_data_reader_(locate_config_info);
    std::cout << "navigate_data_reader_.locate_config_info = " << navigate_data_reader_.get_serial_number() << std::endl;
    
    while (ros::ok())
    {
        // 创建一个String消息
        std_msgs::String msg;
        msg.data = "hello world";

        // 发布消息
        chatter_pub.publish(msg);

        // 打印日志
        ROS_INFO("%s", msg.data.c_str());

        navigate_data_reader_.testTopic();

        
        // 按照设定的频率等待一下，以避免CPU占用过高
        loop_rate.sleep();
    }

    return 0;
}