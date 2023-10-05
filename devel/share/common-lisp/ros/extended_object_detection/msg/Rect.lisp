; Auto-generated. Do not edit!


(cl:in-package extended_object_detection-msg)


;//! \htmlinclude Rect.msg.html

(cl:defclass <Rect> (roslisp-msg-protocol:ros-message)
  ((left_bottom
    :reader left_bottom
    :initarg :left_bottom
    :type extended_object_detection-msg:ImagePoint
    :initform (cl:make-instance 'extended_object_detection-msg:ImagePoint))
   (right_up
    :reader right_up
    :initarg :right_up
    :type extended_object_detection-msg:ImagePoint
    :initform (cl:make-instance 'extended_object_detection-msg:ImagePoint))
   (cornerTranslates
    :reader cornerTranslates
    :initarg :cornerTranslates
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3))))
)

(cl:defclass Rect (<Rect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name extended_object_detection-msg:<Rect> is deprecated: use extended_object_detection-msg:Rect instead.")))

(cl:ensure-generic-function 'left_bottom-val :lambda-list '(m))
(cl:defmethod left_bottom-val ((m <Rect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:left_bottom-val is deprecated.  Use extended_object_detection-msg:left_bottom instead.")
  (left_bottom m))

(cl:ensure-generic-function 'right_up-val :lambda-list '(m))
(cl:defmethod right_up-val ((m <Rect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:right_up-val is deprecated.  Use extended_object_detection-msg:right_up instead.")
  (right_up m))

(cl:ensure-generic-function 'cornerTranslates-val :lambda-list '(m))
(cl:defmethod cornerTranslates-val ((m <Rect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:cornerTranslates-val is deprecated.  Use extended_object_detection-msg:cornerTranslates instead.")
  (cornerTranslates m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rect>) ostream)
  "Serializes a message object of type '<Rect>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_bottom) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_up) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cornerTranslates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cornerTranslates))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rect>) istream)
  "Deserializes a message object of type '<Rect>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_bottom) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_up) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cornerTranslates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cornerTranslates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rect>)))
  "Returns string type for a message object of type '<Rect>"
  "extended_object_detection/Rect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rect)))
  "Returns string type for a message object of type 'Rect"
  "extended_object_detection/Rect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rect>)))
  "Returns md5sum for a message object of type '<Rect>"
  "b1bcb70028ba76b66f0308494067e67d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rect)))
  "Returns md5sum for a message object of type 'Rect"
  "b1bcb70028ba76b66f0308494067e67d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rect>)))
  "Returns full string definition for message of type '<Rect>"
  (cl:format cl:nil "extended_object_detection/ImagePoint left_bottom~%extended_object_detection/ImagePoint right_up~%geometry_msgs/Vector3[] cornerTranslates    # translate to rect corners, from bottom left in clock-wice direction, if z value is 1, it means that it is unit vector in homogeneous coordnates ~%~%~%================================================================================~%MSG: extended_object_detection/ImagePoint~%int32 x~%int32 y~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rect)))
  "Returns full string definition for message of type 'Rect"
  (cl:format cl:nil "extended_object_detection/ImagePoint left_bottom~%extended_object_detection/ImagePoint right_up~%geometry_msgs/Vector3[] cornerTranslates    # translate to rect corners, from bottom left in clock-wice direction, if z value is 1, it means that it is unit vector in homogeneous coordnates ~%~%~%================================================================================~%MSG: extended_object_detection/ImagePoint~%int32 x~%int32 y~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rect>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_bottom))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_up))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cornerTranslates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rect>))
  "Converts a ROS message object to a list"
  (cl:list 'Rect
    (cl:cons ':left_bottom (left_bottom msg))
    (cl:cons ':right_up (right_up msg))
    (cl:cons ':cornerTranslates (cornerTranslates msg))
))
