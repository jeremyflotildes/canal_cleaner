// Generated by gencpp from file extended_object_detection/ComplexObjectArray.msg
// DO NOT EDIT!


#ifndef EXTENDED_OBJECT_DETECTION_MESSAGE_COMPLEXOBJECTARRAY_H
#define EXTENDED_OBJECT_DETECTION_MESSAGE_COMPLEXOBJECTARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <extended_object_detection/ComplexObject.h>

namespace extended_object_detection
{
template <class ContainerAllocator>
struct ComplexObjectArray_
{
  typedef ComplexObjectArray_<ContainerAllocator> Type;

  ComplexObjectArray_()
    : header()
    , complex_objects()  {
    }
  ComplexObjectArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , complex_objects(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::extended_object_detection::ComplexObject_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::extended_object_detection::ComplexObject_<ContainerAllocator> >::other >  _complex_objects_type;
  _complex_objects_type complex_objects;





  typedef boost::shared_ptr< ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> const> ConstPtr;

}; // struct ComplexObjectArray_

typedef ::extended_object_detection::ComplexObjectArray_<std::allocator<void> > ComplexObjectArray;

typedef boost::shared_ptr< ::extended_object_detection::ComplexObjectArray > ComplexObjectArrayPtr;
typedef boost::shared_ptr< ::extended_object_detection::ComplexObjectArray const> ComplexObjectArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::extended_object_detection::ComplexObjectArray_<ContainerAllocator1> & lhs, const ::extended_object_detection::ComplexObjectArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.complex_objects == rhs.complex_objects;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::extended_object_detection::ComplexObjectArray_<ContainerAllocator1> & lhs, const ::extended_object_detection::ComplexObjectArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace extended_object_detection

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "422b800450e196e64ae39e229e083188";
  }

  static const char* value(const ::extended_object_detection::ComplexObjectArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x422b800450e196e6ULL;
  static const uint64_t static_value2 = 0x4ae39e229e083188ULL;
};

template<class ContainerAllocator>
struct DataType< ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "extended_object_detection/ComplexObjectArray";
  }

  static const char* value(const ::extended_object_detection::ComplexObjectArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"extended_object_detection/ComplexObject[] complex_objects\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: extended_object_detection/ComplexObject\n"
"int32 type_id                                       # id of object type, according to ObjectBase\n"
"string type_name                                    # name of object type, according to ObjectBase\n"
"\n"
"float64 score                                       # confidence coefficient of current result\n"
"extended_object_detection/ExtractedInfo extracted_info\n"
"\n"
"extended_object_detection/Rect rect                 # object frames on image and 3d coordinates\n"
"geometry_msgs/Transform transform                   # transform to object center in meters, if z=1 distance is unknow, only direction\n"
"extended_object_detection/SimpleObject[] objects    # set of simple objects form current complex\n"
"\n"
"================================================================================\n"
"MSG: extended_object_detection/ExtractedInfo\n"
"string[] keys\n"
"string[] values\n"
"\n"
"================================================================================\n"
"MSG: extended_object_detection/Rect\n"
"extended_object_detection/ImagePoint left_bottom\n"
"extended_object_detection/ImagePoint right_up\n"
"geometry_msgs/Vector3[] cornerTranslates    # translate to rect corners, from bottom left in clock-wice direction, if z value is 1, it means that it is unit vector in homogeneous coordnates \n"
"\n"
"\n"
"================================================================================\n"
"MSG: extended_object_detection/ImagePoint\n"
"int32 x\n"
"int32 y\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/Transform\n"
"# This represents the transform between two coordinate frames in free space.\n"
"\n"
"Vector3 translation\n"
"Quaternion rotation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: extended_object_detection/SimpleObject\n"
"# object info\n"
"int32 type_id                               # id of type, corresponded to object base\n"
"string type_name                            # name of type, corresponded to object base\n"
"float64 score                               # confidence coefficient of current result\n"
"extended_object_detection/ExtractedInfo extracted_info\n"
"\n"
"# object position and geometry\n"
"geometry_msgs/Transform transform           # transform to object center\n"
"extended_object_detection/Rect rect         # object frames on image and 3d coordinates\n"
"extended_object_detection/Contour contour   # contour image and 3d info\n"
"\n"
"# tracking\n"
"extended_object_detection/Track track       # information about tracking if it is enabled\n"
"\n"
"\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: extended_object_detection/Contour\n"
"extended_object_detection/ImagePoint[] image_points   # points on image\n"
"geometry_msgs/Vector3[] contourTranslates             # translations to contour points\n"
"\n"
"================================================================================\n"
"MSG: extended_object_detection/Track\n"
"uint8 DETECTED = 1  # Current result is obtained by detector\n"
"uint8 TRACKED = 2  # Current result is obtained by opencv tracker\n"
"uint8 LOST = 3      # Failed to obtain result, this is last saved\n"
"\n"
"int32 id            # track unique id (in group of one object)\n"
"uint8 status        # status described above\n"
"#extended_object_detection/ImagePoint[] image_point_history\n"
"#geometry_msgs/Transform[] transform_history\n"
;
  }

  static const char* value(const ::extended_object_detection::ComplexObjectArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.complex_objects);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ComplexObjectArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::extended_object_detection::ComplexObjectArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::extended_object_detection::ComplexObjectArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "complex_objects[]" << std::endl;
    for (size_t i = 0; i < v.complex_objects.size(); ++i)
    {
      s << indent << "  complex_objects[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::extended_object_detection::ComplexObject_<ContainerAllocator> >::stream(s, indent + "    ", v.complex_objects[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXTENDED_OBJECT_DETECTION_MESSAGE_COMPLEXOBJECTARRAY_H
