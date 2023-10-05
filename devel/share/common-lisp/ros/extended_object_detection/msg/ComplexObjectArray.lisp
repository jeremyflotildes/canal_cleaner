; Auto-generated. Do not edit!


(cl:in-package extended_object_detection-msg)


;//! \htmlinclude ComplexObjectArray.msg.html

(cl:defclass <ComplexObjectArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (complex_objects
    :reader complex_objects
    :initarg :complex_objects
    :type (cl:vector extended_object_detection-msg:ComplexObject)
   :initform (cl:make-array 0 :element-type 'extended_object_detection-msg:ComplexObject :initial-element (cl:make-instance 'extended_object_detection-msg:ComplexObject))))
)

(cl:defclass ComplexObjectArray (<ComplexObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComplexObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComplexObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name extended_object_detection-msg:<ComplexObjectArray> is deprecated: use extended_object_detection-msg:ComplexObjectArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ComplexObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:header-val is deprecated.  Use extended_object_detection-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'complex_objects-val :lambda-list '(m))
(cl:defmethod complex_objects-val ((m <ComplexObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:complex_objects-val is deprecated.  Use extended_object_detection-msg:complex_objects instead.")
  (complex_objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComplexObjectArray>) ostream)
  "Serializes a message object of type '<ComplexObjectArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'complex_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'complex_objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComplexObjectArray>) istream)
  "Deserializes a message object of type '<ComplexObjectArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'complex_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'complex_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'extended_object_detection-msg:ComplexObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComplexObjectArray>)))
  "Returns string type for a message object of type '<ComplexObjectArray>"
  "extended_object_detection/ComplexObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComplexObjectArray)))
  "Returns string type for a message object of type 'ComplexObjectArray"
  "extended_object_detection/ComplexObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComplexObjectArray>)))
  "Returns md5sum for a message object of type '<ComplexObjectArray>"
  "422b800450e196e64ae39e229e083188")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComplexObjectArray)))
  "Returns md5sum for a message object of type 'ComplexObjectArray"
  "422b800450e196e64ae39e229e083188")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComplexObjectArray>)))
  "Returns full string definition for message of type '<ComplexObjectArray>"
  (cl:format cl:nil "std_msgs/Header header~%extended_object_detection/ComplexObject[] complex_objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: extended_object_detection/ComplexObject~%int32 type_id                                       # id of object type, according to ObjectBase~%string type_name                                    # name of object type, according to ObjectBase~%~%float64 score                                       # confidence coefficient of current result~%extended_object_detection/ExtractedInfo extracted_info~%~%extended_object_detection/Rect rect                 # object frames on image and 3d coordinates~%geometry_msgs/Transform transform                   # transform to object center in meters, if z=1 distance is unknow, only direction~%extended_object_detection/SimpleObject[] objects    # set of simple objects form current complex~%~%================================================================================~%MSG: extended_object_detection/ExtractedInfo~%string[] keys~%string[] values~%~%================================================================================~%MSG: extended_object_detection/Rect~%extended_object_detection/ImagePoint left_bottom~%extended_object_detection/ImagePoint right_up~%geometry_msgs/Vector3[] cornerTranslates    # translate to rect corners, from bottom left in clock-wice direction, if z value is 1, it means that it is unit vector in homogeneous coordnates ~%~%~%================================================================================~%MSG: extended_object_detection/ImagePoint~%int32 x~%int32 y~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: extended_object_detection/SimpleObject~%# object info~%int32 type_id                               # id of type, corresponded to object base~%string type_name                            # name of type, corresponded to object base~%float64 score                               # confidence coefficient of current result~%extended_object_detection/ExtractedInfo extracted_info~%~%# object position and geometry~%geometry_msgs/Transform transform           # transform to object center~%extended_object_detection/Rect rect         # object frames on image and 3d coordinates~%extended_object_detection/Contour contour   # contour image and 3d info~%~%# tracking~%extended_object_detection/Track track       # information about tracking if it is enabled~%~%~%~%~%~%================================================================================~%MSG: extended_object_detection/Contour~%extended_object_detection/ImagePoint[] image_points   # points on image~%geometry_msgs/Vector3[] contourTranslates             # translations to contour points~%~%================================================================================~%MSG: extended_object_detection/Track~%uint8 DETECTED = 1  # Current result is obtained by detector~%uint8 TRACKED = 2  # Current result is obtained by opencv tracker~%uint8 LOST = 3      # Failed to obtain result, this is last saved~%~%int32 id            # track unique id (in group of one object)~%uint8 status        # status described above~%#extended_object_detection/ImagePoint[] image_point_history~%#geometry_msgs/Transform[] transform_history~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComplexObjectArray)))
  "Returns full string definition for message of type 'ComplexObjectArray"
  (cl:format cl:nil "std_msgs/Header header~%extended_object_detection/ComplexObject[] complex_objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: extended_object_detection/ComplexObject~%int32 type_id                                       # id of object type, according to ObjectBase~%string type_name                                    # name of object type, according to ObjectBase~%~%float64 score                                       # confidence coefficient of current result~%extended_object_detection/ExtractedInfo extracted_info~%~%extended_object_detection/Rect rect                 # object frames on image and 3d coordinates~%geometry_msgs/Transform transform                   # transform to object center in meters, if z=1 distance is unknow, only direction~%extended_object_detection/SimpleObject[] objects    # set of simple objects form current complex~%~%================================================================================~%MSG: extended_object_detection/ExtractedInfo~%string[] keys~%string[] values~%~%================================================================================~%MSG: extended_object_detection/Rect~%extended_object_detection/ImagePoint left_bottom~%extended_object_detection/ImagePoint right_up~%geometry_msgs/Vector3[] cornerTranslates    # translate to rect corners, from bottom left in clock-wice direction, if z value is 1, it means that it is unit vector in homogeneous coordnates ~%~%~%================================================================================~%MSG: extended_object_detection/ImagePoint~%int32 x~%int32 y~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: extended_object_detection/SimpleObject~%# object info~%int32 type_id                               # id of type, corresponded to object base~%string type_name                            # name of type, corresponded to object base~%float64 score                               # confidence coefficient of current result~%extended_object_detection/ExtractedInfo extracted_info~%~%# object position and geometry~%geometry_msgs/Transform transform           # transform to object center~%extended_object_detection/Rect rect         # object frames on image and 3d coordinates~%extended_object_detection/Contour contour   # contour image and 3d info~%~%# tracking~%extended_object_detection/Track track       # information about tracking if it is enabled~%~%~%~%~%~%================================================================================~%MSG: extended_object_detection/Contour~%extended_object_detection/ImagePoint[] image_points   # points on image~%geometry_msgs/Vector3[] contourTranslates             # translations to contour points~%~%================================================================================~%MSG: extended_object_detection/Track~%uint8 DETECTED = 1  # Current result is obtained by detector~%uint8 TRACKED = 2  # Current result is obtained by opencv tracker~%uint8 LOST = 3      # Failed to obtain result, this is last saved~%~%int32 id            # track unique id (in group of one object)~%uint8 status        # status described above~%#extended_object_detection/ImagePoint[] image_point_history~%#geometry_msgs/Transform[] transform_history~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComplexObjectArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'complex_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComplexObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ComplexObjectArray
    (cl:cons ':header (header msg))
    (cl:cons ':complex_objects (complex_objects msg))
))
