; Auto-generated. Do not edit!


(cl:in-package extended_object_detection-msg)


;//! \htmlinclude Contour.msg.html

(cl:defclass <Contour> (roslisp-msg-protocol:ros-message)
  ((image_points
    :reader image_points
    :initarg :image_points
    :type (cl:vector extended_object_detection-msg:ImagePoint)
   :initform (cl:make-array 0 :element-type 'extended_object_detection-msg:ImagePoint :initial-element (cl:make-instance 'extended_object_detection-msg:ImagePoint)))
   (contourTranslates
    :reader contourTranslates
    :initarg :contourTranslates
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3))))
)

(cl:defclass Contour (<Contour>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Contour>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Contour)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name extended_object_detection-msg:<Contour> is deprecated: use extended_object_detection-msg:Contour instead.")))

(cl:ensure-generic-function 'image_points-val :lambda-list '(m))
(cl:defmethod image_points-val ((m <Contour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:image_points-val is deprecated.  Use extended_object_detection-msg:image_points instead.")
  (image_points m))

(cl:ensure-generic-function 'contourTranslates-val :lambda-list '(m))
(cl:defmethod contourTranslates-val ((m <Contour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:contourTranslates-val is deprecated.  Use extended_object_detection-msg:contourTranslates instead.")
  (contourTranslates m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Contour>) ostream)
  "Serializes a message object of type '<Contour>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'image_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'image_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'contourTranslates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'contourTranslates))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Contour>) istream)
  "Deserializes a message object of type '<Contour>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'image_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'image_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'extended_object_detection-msg:ImagePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'contourTranslates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'contourTranslates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Contour>)))
  "Returns string type for a message object of type '<Contour>"
  "extended_object_detection/Contour")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Contour)))
  "Returns string type for a message object of type 'Contour"
  "extended_object_detection/Contour")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Contour>)))
  "Returns md5sum for a message object of type '<Contour>"
  "ff58bd338df15e277a5ae5e64f7a36f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Contour)))
  "Returns md5sum for a message object of type 'Contour"
  "ff58bd338df15e277a5ae5e64f7a36f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Contour>)))
  "Returns full string definition for message of type '<Contour>"
  (cl:format cl:nil "extended_object_detection/ImagePoint[] image_points   # points on image~%geometry_msgs/Vector3[] contourTranslates             # translations to contour points~%~%================================================================================~%MSG: extended_object_detection/ImagePoint~%int32 x~%int32 y~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Contour)))
  "Returns full string definition for message of type 'Contour"
  (cl:format cl:nil "extended_object_detection/ImagePoint[] image_points   # points on image~%geometry_msgs/Vector3[] contourTranslates             # translations to contour points~%~%================================================================================~%MSG: extended_object_detection/ImagePoint~%int32 x~%int32 y~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Contour>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'contourTranslates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Contour>))
  "Converts a ROS message object to a list"
  (cl:list 'Contour
    (cl:cons ':image_points (image_points msg))
    (cl:cons ':contourTranslates (contourTranslates msg))
))
