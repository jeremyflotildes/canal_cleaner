; Auto-generated. Do not edit!


(cl:in-package extended_object_detection-srv)


;//! \htmlinclude SetSimpleObjects-request.msg.html

(cl:defclass <SetSimpleObjects-request> (roslisp-msg-protocol:ros-message)
  ((changes
    :reader changes
    :initarg :changes
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (remove_all
    :reader remove_all
    :initarg :remove_all
    :type cl:boolean
    :initform cl:nil)
   (add_all
    :reader add_all
    :initarg :add_all
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetSimpleObjects-request (<SetSimpleObjects-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSimpleObjects-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSimpleObjects-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name extended_object_detection-srv:<SetSimpleObjects-request> is deprecated: use extended_object_detection-srv:SetSimpleObjects-request instead.")))

(cl:ensure-generic-function 'changes-val :lambda-list '(m))
(cl:defmethod changes-val ((m <SetSimpleObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-srv:changes-val is deprecated.  Use extended_object_detection-srv:changes instead.")
  (changes m))

(cl:ensure-generic-function 'remove_all-val :lambda-list '(m))
(cl:defmethod remove_all-val ((m <SetSimpleObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-srv:remove_all-val is deprecated.  Use extended_object_detection-srv:remove_all instead.")
  (remove_all m))

(cl:ensure-generic-function 'add_all-val :lambda-list '(m))
(cl:defmethod add_all-val ((m <SetSimpleObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-srv:add_all-val is deprecated.  Use extended_object_detection-srv:add_all instead.")
  (add_all m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSimpleObjects-request>) ostream)
  "Serializes a message object of type '<SetSimpleObjects-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'changes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'changes))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'remove_all) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'add_all) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSimpleObjects-request>) istream)
  "Deserializes a message object of type '<SetSimpleObjects-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'changes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'changes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
    (cl:setf (cl:slot-value msg 'remove_all) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'add_all) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSimpleObjects-request>)))
  "Returns string type for a service object of type '<SetSimpleObjects-request>"
  "extended_object_detection/SetSimpleObjectsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSimpleObjects-request)))
  "Returns string type for a service object of type 'SetSimpleObjects-request"
  "extended_object_detection/SetSimpleObjectsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSimpleObjects-request>)))
  "Returns md5sum for a message object of type '<SetSimpleObjects-request>"
  "7e842254cbe0d0dd775c05000053aba0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSimpleObjects-request)))
  "Returns md5sum for a message object of type 'SetSimpleObjects-request"
  "7e842254cbe0d0dd775c05000053aba0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSimpleObjects-request>)))
  "Returns full string definition for message of type '<SetSimpleObjects-request>"
  (cl:format cl:nil "# Asks to remove or add objects to detection queue by its ID's~%~%# List of changes, contains objects ID~%# For remove object from detection queue add its id with negative sign~%# To add object to detection queue add its id~%int64[] changes~%~%# if true removes all objects (node detects nothing)~%bool remove_all~%~%# if true includes all objects from base to detection queue ~%bool add_all~%~%# if both remove_all and add_all are true, does nothing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSimpleObjects-request)))
  "Returns full string definition for message of type 'SetSimpleObjects-request"
  (cl:format cl:nil "# Asks to remove or add objects to detection queue by its ID's~%~%# List of changes, contains objects ID~%# For remove object from detection queue add its id with negative sign~%# To add object to detection queue add its id~%int64[] changes~%~%# if true removes all objects (node detects nothing)~%bool remove_all~%~%# if true includes all objects from base to detection queue ~%bool add_all~%~%# if both remove_all and add_all are true, does nothing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSimpleObjects-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'changes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSimpleObjects-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSimpleObjects-request
    (cl:cons ':changes (changes msg))
    (cl:cons ':remove_all (remove_all msg))
    (cl:cons ':add_all (add_all msg))
))
;//! \htmlinclude SetSimpleObjects-response.msg.html

(cl:defclass <SetSimpleObjects-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SetSimpleObjects-response (<SetSimpleObjects-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSimpleObjects-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSimpleObjects-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name extended_object_detection-srv:<SetSimpleObjects-response> is deprecated: use extended_object_detection-srv:SetSimpleObjects-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetSimpleObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-srv:result-val is deprecated.  Use extended_object_detection-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSimpleObjects-response>) ostream)
  "Serializes a message object of type '<SetSimpleObjects-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSimpleObjects-response>) istream)
  "Deserializes a message object of type '<SetSimpleObjects-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'result) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'result)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSimpleObjects-response>)))
  "Returns string type for a service object of type '<SetSimpleObjects-response>"
  "extended_object_detection/SetSimpleObjectsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSimpleObjects-response)))
  "Returns string type for a service object of type 'SetSimpleObjects-response"
  "extended_object_detection/SetSimpleObjectsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSimpleObjects-response>)))
  "Returns md5sum for a message object of type '<SetSimpleObjects-response>"
  "7e842254cbe0d0dd775c05000053aba0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSimpleObjects-response)))
  "Returns md5sum for a message object of type 'SetSimpleObjects-response"
  "7e842254cbe0d0dd775c05000053aba0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSimpleObjects-response>)))
  "Returns full string definition for message of type '<SetSimpleObjects-response>"
  (cl:format cl:nil "# List of objects in detection queue after changes~%int64[] result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSimpleObjects-response)))
  "Returns full string definition for message of type 'SetSimpleObjects-response"
  (cl:format cl:nil "# List of objects in detection queue after changes~%int64[] result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSimpleObjects-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'result) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSimpleObjects-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSimpleObjects-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetSimpleObjects)))
  'SetSimpleObjects-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetSimpleObjects)))
  'SetSimpleObjects-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSimpleObjects)))
  "Returns string type for a service object of type '<SetSimpleObjects>"
  "extended_object_detection/SetSimpleObjects")