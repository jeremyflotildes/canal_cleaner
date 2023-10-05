; Auto-generated. Do not edit!


(cl:in-package extended_object_detection-msg)


;//! \htmlinclude BaseObject.msg.html

(cl:defclass <BaseObject> (roslisp-msg-protocol:ros-message)
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
   (transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (rect
    :reader rect
    :initarg :rect
    :type extended_object_detection-msg:Rect
    :initform (cl:make-instance 'extended_object_detection-msg:Rect))
   (track
    :reader track
    :initarg :track
    :type extended_object_detection-msg:Track
    :initform (cl:make-instance 'extended_object_detection-msg:Track)))
)

(cl:defclass BaseObject (<BaseObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BaseObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BaseObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name extended_object_detection-msg:<BaseObject> is deprecated: use extended_object_detection-msg:BaseObject instead.")))

(cl:ensure-generic-function 'type_id-val :lambda-list '(m))
(cl:defmethod type_id-val ((m <BaseObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:type_id-val is deprecated.  Use extended_object_detection-msg:type_id instead.")
  (type_id m))

(cl:ensure-generic-function 'type_name-val :lambda-list '(m))
(cl:defmethod type_name-val ((m <BaseObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:type_name-val is deprecated.  Use extended_object_detection-msg:type_name instead.")
  (type_name m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <BaseObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:score-val is deprecated.  Use extended_object_detection-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'extracted_info-val :lambda-list '(m))
(cl:defmethod extracted_info-val ((m <BaseObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:extracted_info-val is deprecated.  Use extended_object_detection-msg:extracted_info instead.")
  (extracted_info m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <BaseObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:transform-val is deprecated.  Use extended_object_detection-msg:transform instead.")
  (transform m))

(cl:ensure-generic-function 'rect-val :lambda-list '(m))
(cl:defmethod rect-val ((m <BaseObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:rect-val is deprecated.  Use extended_object_detection-msg:rect instead.")
  (rect m))

(cl:ensure-generic-function 'track-val :lambda-list '(m))
(cl:defmethod track-val ((m <BaseObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-msg:track-val is deprecated.  Use extended_object_detection-msg:track instead.")
  (track m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BaseObject>) ostream)
  "Serializes a message object of type '<BaseObject>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rect) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BaseObject>) istream)
  "Deserializes a message object of type '<BaseObject>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rect) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BaseObject>)))
  "Returns string type for a message object of type '<BaseObject>"
  "extended_object_detection/BaseObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BaseObject)))
  "Returns string type for a message object of type 'BaseObject"
  "extended_object_detection/BaseObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BaseObject>)))
  "Returns md5sum for a message object of type '<BaseObject>"
  "cadbaa14a61650dc5a78368de1b900d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BaseObject)))
  "Returns md5sum for a message object of type 'BaseObject"
  "cadbaa14a61650dc5a78368de1b900d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BaseObject>)))
  "Returns full string definition for message of type '<BaseObject>"
  (cl:format cl:nil "# id of type, corresponded to object base~%int32 type_id                               ~%~%# name of type, corresponded to object base~%string type_name                           ~%~%# confidence coefficient of current result~%float64 score                             ~%~%# additional info represended as dictionary~%extended_object_detection/ExtractedInfo extracted_info~%~%# object position and geometry~%~%## transform to object center~%geometry_msgs/Transform transform           ~%~%## object frames on image and 3d coordinates~%extended_object_detection/Rect rect         ~%~%# information about tracking if it is enabled~%extended_object_detection/Track track       ~%~%~%~%~%~%================================================================================~%MSG: extended_object_detection/ExtractedInfo~%string[] keys~%string[] values~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: extended_object_detection/Rect~%extended_object_detection/ImagePoint left_bottom~%extended_object_detection/ImagePoint right_up~%geometry_msgs/Vector3[] cornerTranslates    # translate to rect corners, from bottom left in clock-wice direction, if z value is 1, it means that it is unit vector in homogeneous coordnates ~%~%~%================================================================================~%MSG: extended_object_detection/ImagePoint~%int32 x~%int32 y~%~%================================================================================~%MSG: extended_object_detection/Track~%uint8 DETECTED = 1  # Current result is obtained by detector~%uint8 TRACKED = 2  # Current result is obtained by opencv tracker~%uint8 LOST = 3      # Failed to obtain result, this is last saved~%~%int32 id            # track unique id (in group of one object)~%uint8 status        # status described above~%#extended_object_detection/ImagePoint[] image_point_history~%#geometry_msgs/Transform[] transform_history~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BaseObject)))
  "Returns full string definition for message of type 'BaseObject"
  (cl:format cl:nil "# id of type, corresponded to object base~%int32 type_id                               ~%~%# name of type, corresponded to object base~%string type_name                           ~%~%# confidence coefficient of current result~%float64 score                             ~%~%# additional info represended as dictionary~%extended_object_detection/ExtractedInfo extracted_info~%~%# object position and geometry~%~%## transform to object center~%geometry_msgs/Transform transform           ~%~%## object frames on image and 3d coordinates~%extended_object_detection/Rect rect         ~%~%# information about tracking if it is enabled~%extended_object_detection/Track track       ~%~%~%~%~%~%================================================================================~%MSG: extended_object_detection/ExtractedInfo~%string[] keys~%string[] values~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: extended_object_detection/Rect~%extended_object_detection/ImagePoint left_bottom~%extended_object_detection/ImagePoint right_up~%geometry_msgs/Vector3[] cornerTranslates    # translate to rect corners, from bottom left in clock-wice direction, if z value is 1, it means that it is unit vector in homogeneous coordnates ~%~%~%================================================================================~%MSG: extended_object_detection/ImagePoint~%int32 x~%int32 y~%~%================================================================================~%MSG: extended_object_detection/Track~%uint8 DETECTED = 1  # Current result is obtained by detector~%uint8 TRACKED = 2  # Current result is obtained by opencv tracker~%uint8 LOST = 3      # Failed to obtain result, this is last saved~%~%int32 id            # track unique id (in group of one object)~%uint8 status        # status described above~%#extended_object_detection/ImagePoint[] image_point_history~%#geometry_msgs/Transform[] transform_history~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BaseObject>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'type_name))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'extracted_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rect))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BaseObject>))
  "Converts a ROS message object to a list"
  (cl:list 'BaseObject
    (cl:cons ':type_id (type_id msg))
    (cl:cons ':type_name (type_name msg))
    (cl:cons ':score (score msg))
    (cl:cons ':extracted_info (extracted_info msg))
    (cl:cons ':transform (transform msg))
    (cl:cons ':rect (rect msg))
    (cl:cons ':track (track msg))
))
