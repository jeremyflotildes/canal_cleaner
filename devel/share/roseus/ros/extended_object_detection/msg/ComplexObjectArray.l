;; Auto-generated. Do not edit!


(when (boundp 'extended_object_detection::ComplexObjectArray)
  (if (not (find-package "EXTENDED_OBJECT_DETECTION"))
    (make-package "EXTENDED_OBJECT_DETECTION"))
  (shadow 'ComplexObjectArray (find-package "EXTENDED_OBJECT_DETECTION")))
(unless (find-package "EXTENDED_OBJECT_DETECTION::COMPLEXOBJECTARRAY")
  (make-package "EXTENDED_OBJECT_DETECTION::COMPLEXOBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude ComplexObjectArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass extended_object_detection::ComplexObjectArray
  :super ros::object
  :slots (_header _complex_objects ))

(defmethod extended_object_detection::ComplexObjectArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:complex_objects __complex_objects) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _complex_objects __complex_objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:complex_objects
   (&rest __complex_objects)
   (if (keywordp (car __complex_objects))
       (send* _complex_objects __complex_objects)
     (progn
       (if __complex_objects (setq _complex_objects (car __complex_objects)))
       _complex_objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; extended_object_detection/ComplexObject[] _complex_objects
    (apply #'+ (send-all _complex_objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; extended_object_detection/ComplexObject[] _complex_objects
     (write-long (length _complex_objects) s)
     (dolist (elem _complex_objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; extended_object_detection/ComplexObject[] _complex_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _complex_objects (let (r) (dotimes (i n) (push (instance extended_object_detection::ComplexObject :init) r)) r))
     (dolist (elem- _complex_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get extended_object_detection::ComplexObjectArray :md5sum-) "422b800450e196e64ae39e229e083188")
(setf (get extended_object_detection::ComplexObjectArray :datatype-) "extended_object_detection/ComplexObjectArray")
(setf (get extended_object_detection::ComplexObjectArray :definition-)
      "std_msgs/Header header
extended_object_detection/ComplexObject[] complex_objects

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: extended_object_detection/ComplexObject
int32 type_id                                       # id of object type, according to ObjectBase
string type_name                                    # name of object type, according to ObjectBase

float64 score                                       # confidence coefficient of current result
extended_object_detection/ExtractedInfo extracted_info

extended_object_detection/Rect rect                 # object frames on image and 3d coordinates
geometry_msgs/Transform transform                   # transform to object center in meters, if z=1 distance is unknow, only direction
extended_object_detection/SimpleObject[] objects    # set of simple objects form current complex

================================================================================
MSG: extended_object_detection/ExtractedInfo
string[] keys
string[] values

================================================================================
MSG: extended_object_detection/Rect
extended_object_detection/ImagePoint left_bottom
extended_object_detection/ImagePoint right_up
geometry_msgs/Vector3[] cornerTranslates    # translate to rect corners, from bottom left in clock-wice direction, if z value is 1, it means that it is unit vector in homogeneous coordnates 


================================================================================
MSG: extended_object_detection/ImagePoint
int32 x
int32 y

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: extended_object_detection/SimpleObject
# object info
int32 type_id                               # id of type, corresponded to object base
string type_name                            # name of type, corresponded to object base
float64 score                               # confidence coefficient of current result
extended_object_detection/ExtractedInfo extracted_info

# object position and geometry
geometry_msgs/Transform transform           # transform to object center
extended_object_detection/Rect rect         # object frames on image and 3d coordinates
extended_object_detection/Contour contour   # contour image and 3d info

# tracking
extended_object_detection/Track track       # information about tracking if it is enabled





================================================================================
MSG: extended_object_detection/Contour
extended_object_detection/ImagePoint[] image_points   # points on image
geometry_msgs/Vector3[] contourTranslates             # translations to contour points

================================================================================
MSG: extended_object_detection/Track
uint8 DETECTED = 1  # Current result is obtained by detector
uint8 TRACKED = 2  # Current result is obtained by opencv tracker
uint8 LOST = 3      # Failed to obtain result, this is last saved

int32 id            # track unique id (in group of one object)
uint8 status        # status described above
#extended_object_detection/ImagePoint[] image_point_history
#geometry_msgs/Transform[] transform_history

")



(provide :extended_object_detection/ComplexObjectArray "422b800450e196e64ae39e229e083188")


