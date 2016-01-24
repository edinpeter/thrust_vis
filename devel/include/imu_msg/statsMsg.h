// Generated by gencpp from file imu_msg/statsMsg.msg
// DO NOT EDIT!


#ifndef IMU_MSG_MESSAGE_STATSMSG_H
#define IMU_MSG_MESSAGE_STATSMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace imu_msg
{
template <class ContainerAllocator>
struct statsMsg_
{
  typedef statsMsg_<ContainerAllocator> Type;

  statsMsg_()
    : xSD(0)
    , ySD(0)
    , xCent(0)
    , yCent(0)  {
    }
  statsMsg_(const ContainerAllocator& _alloc)
    : xSD(0)
    , ySD(0)
    , xCent(0)
    , yCent(0)  {
    }



   typedef int32_t _xSD_type;
  _xSD_type xSD;

   typedef int32_t _ySD_type;
  _ySD_type ySD;

   typedef int32_t _xCent_type;
  _xCent_type xCent;

   typedef int32_t _yCent_type;
  _yCent_type yCent;




  typedef boost::shared_ptr< ::imu_msg::statsMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::imu_msg::statsMsg_<ContainerAllocator> const> ConstPtr;

}; // struct statsMsg_

typedef ::imu_msg::statsMsg_<std::allocator<void> > statsMsg;

typedef boost::shared_ptr< ::imu_msg::statsMsg > statsMsgPtr;
typedef boost::shared_ptr< ::imu_msg::statsMsg const> statsMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::imu_msg::statsMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::imu_msg::statsMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace imu_msg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'imu_msg': ['/home/kamille/thrust_vis/src/imu_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::imu_msg::statsMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::imu_msg::statsMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imu_msg::statsMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imu_msg::statsMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imu_msg::statsMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imu_msg::statsMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::imu_msg::statsMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0774c5ae2f41c65f0564a155f4857204";
  }

  static const char* value(const ::imu_msg::statsMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0774c5ae2f41c65fULL;
  static const uint64_t static_value2 = 0x0564a155f4857204ULL;
};

template<class ContainerAllocator>
struct DataType< ::imu_msg::statsMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imu_msg/statsMsg";
  }

  static const char* value(const ::imu_msg::statsMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::imu_msg::statsMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 xSD\n\
int32 ySD\n\
int32 xCent\n\
int32 yCent\n\
";
  }

  static const char* value(const ::imu_msg::statsMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::imu_msg::statsMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xSD);
      stream.next(m.ySD);
      stream.next(m.xCent);
      stream.next(m.yCent);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct statsMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::imu_msg::statsMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::imu_msg::statsMsg_<ContainerAllocator>& v)
  {
    s << indent << "xSD: ";
    Printer<int32_t>::stream(s, indent + "  ", v.xSD);
    s << indent << "ySD: ";
    Printer<int32_t>::stream(s, indent + "  ", v.ySD);
    s << indent << "xCent: ";
    Printer<int32_t>::stream(s, indent + "  ", v.xCent);
    s << indent << "yCent: ";
    Printer<int32_t>::stream(s, indent + "  ", v.yCent);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMU_MSG_MESSAGE_STATSMSG_H
