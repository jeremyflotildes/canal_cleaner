; Auto-generated. Do not edit!


(cl:in-package extended_object_detection-msg)


;//! \htmlinclude ComplexObject.msg.html

(cl:defclass <ComplexObject> (roslisp-msg-protocol:ros-message)
  ((type_id
    :reader type_id
    :initarg :type_id
    :type cl:integer
    :initform 0)
   (type_name
    :reader type_name
    :initarg :type_name
    :type cl:string
    :initform "")
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (extracted_info
    :reader extracted_info
    :initarg :extracted_info
    :type extended_object_detection-msg:ExtractedInfo
    :initform (cl:make-instance 'extended_object_detection-msg:ExtractedInfo))
   (rect
    :reader rect
    :initarg :rect
    :type extended_object_detection-msg:Rect
    :initform (cl:make-instance 'extended_object_detection-msg:Rect))
   (transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector extended_object_detection-msg:SimpleObject)
   :initform (cl:make-array 0 :element-type 'extended_object_detection-msg:SimpleObject :initial-element (cl:make-instance 'extended_object_detection-msg:SimpleObject))))
)

(cl:defclass ComplexObject (<ComplexObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComplexObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComplexObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name extended_object_detection-msg:<ComplexObject> is deprecated: use extended_object_detection-msg:ComplexObject instead.")))

(cl:ensure-generic-function 'type_id-val :lambda-list '(m))
(cl:defmethod type_id-val ((m <ComplexObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:type_id-val is deprecated.  Use extended_object_detection-msg:type_id instead.")
  (type_id m))

(cl:ensure-generic-function 'type_name-val :lambda-list '(m))
(cl:defmethod type_name-val ((m <ComplexObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:type_name-val is deprecated.  Use extended_object_detection-msg:type_name instead.")
  (type_name m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <ComplexObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:score-val is deprecated.  Use extended_object_detection-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'extracted_info-val :lambda-list '(m))
(cl:defmethod extracted_info-val ((m <ComplexObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:extracted_info-val is deprecated.  Use extended_object_detection-msg:extracted_info instead.")
  (extracted_info m))

(cl:ensure-generic-function 'rect-val :lambda-list '(m))
(cl:defmethod rect-val ((m <ComplexObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:rect-val is deprecated.  Use extended_object_detection-msg:rect instead.")
  (rect m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <ComplexObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:transform-val is deprecated.  Use extended_object_detection-msg:transform instead.")
  (transform m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <ComplexObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:objects-val is deprecated.  Use extended_object_detection-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComplexObject>) ostream)
  "Serializes a message object of type '<ComplexObject>"
  (cl:let* ((signed (cl:slot-value msg 'type_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'extracted_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rect) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComplexObject>) istream)
  "Deserializes a message object of type '<ComplexObject>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'extracted_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rect) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'extended_object_detection-msg:SimpleObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComplexObject>)))
  "Returns string type for a message object of type '<ComplexObject>"
  "extended_object_detection/ComplexObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComplexObject)))
  "Returns string type for a message object of type 'ComplexObject"
  "extended_object_detection/ComplexObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComplexObject>)))
  "Returns md5sum for a message object of type '<ComplexObject>"
  "fa224b9c30007427e3d41721a134e56d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComplexObject)))
  "Returns md5sum for a message object of type 'ComplexObject"
  "fa224b9c30007427e3d41721a134e56d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComplexObject>)))
  "Returns full string definition for message of type '<ComplexObject>"
  (cl:format cl:nil "int32 type_id                                       # id of object type, according to ObjectBase~%string type_name                                    # name of object type, according to ObjectBase~%~%float64 score                                       # confidence coefficient of current result~%extended_object_detection/ExtractedInfo extracted_info~%~%extended_object_detection/Rect rect                 # object frames on image and 3d coordinates~%geometry_msgs/Transform transform                   # transform to object center in meters, if z=1 distance is unknow, only direction~%extended_object_detection/SimpleObject[] objects    # set of simple objects form current complex~%~%================================================================================~%MSG: extended_object_detection/ExtractedInfo~%string[] keys~%string[] values~%~%================================================================================~%MSG: extended_object_detection/Rect~%extended_object_detection/ImagePoint left_bottom~%extended_object_detection/ImagePoint right_up~%geometry_msgs/Vector3[] cornerTranslates    # translate to rect corners, from bottom left in clock-wice direction, if z value is 1, it means that it is unit vector in homogeneous coordnates ~%~%~%================================================================================~%MSG: extended_object_detection/ImagePoint~%int32 x~%int32 y~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: extended_object_detection/SimpleObject~%# object info~%int32 type_id                               # id of type, corresponded to object base~%string type_name                            # name of type, corresponded to object base~%float64 score                               # confidence coefficient of current result~%extended_object_detection/ExtractedInfo extracted_info~%~%# object position and geometry~%geometry_msgs/Transform transform           # transform to object center~%extended_object_detection/Rect rect         # object frames on image and 3d coordinates~%extended_object_detection/Contour contour   # contour image and 3d info~%~%# tracking~%extended_object_detection/Track track       # information about tracking if it is enabled~%~%~%~%~%~%================================================================================~%MSG: extended_object_detection/Contour~%extended_object_detection/ImagePoint[] image_points   # points on image~%geometry_msgs/Vector3[] contourTranslates             # translations to contour points~%~%================================================================================~%MSG: extended_object_detection/Track~%uint8 DETECTED = 1  # Current result is obtained by detector~%uint8 TRACKED = 2  # Current result is obtained by opencv tracker~%uint8 LOST = 3      # Failed to obtain result, this is last saved~%~%int32 id            # track unique id (in group of one object)~%uint8 status        # status described above~%#extended_object_detection/ImagePoint[] image_point_history~%#geometry_msgs/Transform[] transform_history~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComplexObject)))
  "Returns full string definition for message of type 'ComplexObject"
  (cl:format cl:nil "int32 type_id                                       # id of object type, according to ObjectBase~%string type_name                                    # name of object type, according to ObjectBase~%~%float64 score                                       # confidence coefficient of current result~%extended_object_detection/ExtractedInfo extracted_info~%~%extended_object_detection/Rect rect                 # object frames on image and 3d coordinates~%geometry_msgs/Transform transform                   # transform to object center in meters, if z=1 distance is unknow, only direction~%extended_object_detection/SimpleObject[] objects    # set of simple objects form current complex~%~%================================================================================~%MSG: extended_object_detection/ExtractedInfo~%string[] keys~%string[] values~%~%================================================================================~%MSG: extended_object_detection/Rect~%extended_object_detection/ImagePoint left_bottom~%extended_object_detection/ImagePoint right_up~%geometry_msgs/Vector3[] cornerTranslates    # translate to rect corners, from bottom left in clock-wice direction, if z value is 1, it means that it is unit vector in homogeneous coordnates ~%~%~%================================================================================~%MSG: extended_object_detection/ImagePoint~%int32 x~%int32 y~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: extended_object_detection/SimpleObject~%# object info~%int32 type_id                               # id of type, corresponded to object base~%string type_name                            # name of type, corresponded to object base~%float64 score                               # confidence coefficient of current result~%extended_object_detection/ExtractedInfo extracted_info~%~%# object position and geometry~%geometry_msgs/Transform transform           # transform to object center~%extended_object_detection/Rect rect         # object frames on image and 3d coordinates~%extended_object_detection/Contour contour   # contour image and 3d info~%~%# tracking~%extended_object_detection/Track track       # information about tracking if it is enabled~%~%~%~%~%~%================================================================================~%MSG: extended_object_detection/Contour~%extended_object_detection/ImagePoint[] image_points   # points on image~%geometry_msgs/Vector3[] contourTranslates             # translations to contour points~%~%================================================================================~%MSG: extended_object_detection/Track~%uint8 DETECTED = 1  # Current result is obtained by detector~%uint8 TRACKED = 2  # Current result is obtained by opencv tracker~%uint8 LOST = 3      # Failed to obtain result, this is last saved~%~%int32 id            # track unique id (in group of one object)~%uint8 status        # status described above~%#extended_object_detection/ImagePoint[] image_point_history~%#geometry_msgs/Transform[] transform_history~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComplexObject>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'type_name))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'extracted_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rect))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComplexObject>))
  "Converts a ROS message object to a list"
  (cl:list 'ComplexObject
    (cl:cons ':type_id (type_id msg))
    (cl:cons ':type_name (type_name msg))
    (cl:cons ':score (score msg))
    (cl:cons ':extracted_info (extracted_info msg))
    (cl:cons ':rect (rect msg))
    (cl:cons ':transform (transform msg))
    (cl:cons ':objects (objects msg))
))
