; Auto-generated. Do not edit!


(cl:in-package extended_object_detection-srv)


;//! \htmlinclude SetObjects-request.msg.html

(cl:defclass <SetObjects-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetObjects-request (<SetObjects-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObjects-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObjects-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name extended_object_detection-srv:<SetObjects-request> is deprecated: use extended_object_detection-srv:SetObjects-request instead.")))

(cl:ensure-generic-function 'changes-val :lambda-list '(m))
(cl:defmethod changes-val ((m <SetObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-srv:changes-val is deprecated.  Use extended_object_detection-srv:changes instead.")
  (changes m))

(cl:ensure-generic-function 'remove_all-val :lambda-list '(m))
(cl:defmethod remove_all-val ((m <SetObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-srv:remove_all-val is deprecated.  Use extended_object_detection-srv:remove_all instead.")
  (remove_all m))

(cl:ensure-generic-function 'add_all-val :lambda-list '(m))
(cl:defmethod add_all-val ((m <SetObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-srv:add_all-val is deprecated.  Use extended_object_detection-srv:add_all instead.")
  (add_all m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObjects-request>) ostream)
  "Serializes a message object of type '<SetObjects-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObjects-request>) istream)
  "Deserializes a message object of type '<SetObjects-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObjects-request>)))
  "Returns string type for a service object of type '<SetObjects-request>"
  "extended_object_detection/SetObjectsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObjects-request)))
  "Returns string type for a service object of type 'SetObjects-request"
  "extended_object_detection/SetObjectsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObjects-request>)))
  "Returns md5sum for a message object of type '<SetObjects-request>"
  "7e842254cbe0d0dd775c05000053aba0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObjects-request)))
  "Returns md5sum for a message object of type 'SetObjects-request"
  "7e842254cbe0d0dd775c05000053aba0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObjects-request>)))
  "Returns full string definition for message of type '<SetObjects-request>"
  (cl:format cl:nil "# Asks to remove or add objects to detection queue by its ID's~%~%# List of changes, contains objects ID~%# For remove object from detection queue add its id with negative sign~%# To add object to detection queue add its id~%int64[] changes~%~%# if true removes all objects (node detects nothing)~%bool remove_all~%~%# if true includes all objects from base to detection queue ~%bool add_all~%~%# if both remove_all and add_all are true, does nothing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObjects-request)))
  "Returns full string definition for message of type 'SetObjects-request"
  (cl:format cl:nil "# Asks to remove or add objects to detection queue by its ID's~%~%# List of changes, contains objects ID~%# For remove object from detection queue add its id with negative sign~%# To add object to detection queue add its id~%int64[] changes~%~%# if true removes all objects (node detects nothing)~%bool remove_all~%~%# if true includes all objects from base to detection queue ~%bool add_all~%~%# if both remove_all and add_all are true, does nothing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObjects-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'changes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObjects-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObjects-request
    (cl:cons ':changes (changes msg))
    (cl:cons ':remove_all (remove_all msg))
    (cl:cons ':add_all (add_all msg))
))
;//! \htmlinclude SetObjects-response.msg.html

(cl:defclass <SetObjects-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SetObjects-response (<SetObjects-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObjects-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObjects-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name extended_object_detection-srv:<SetObjects-response> is deprecated: use extended_object_detection-srv:SetObjects-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extended_object_detection-srv:result-val is deprecated.  Use extended_object_detection-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObjects-response>) ostream)
  "Serializes a message object of type '<SetObjects-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObjects-response>) istream)
  "Deserializes a message object of type '<SetObjects-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObjects-response>)))
  "Returns string type for a service object of type '<SetObjects-response>"
  "extended_object_detection/SetObjectsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObjects-response)))
  "Returns string type for a service object of type 'SetObjects-response"
  "extended_object_detection/SetObjectsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObjects-response>)))
  "Returns md5sum for a message object of type '<SetObjects-response>"
  "7e842254cbe0d0dd775c05000053aba0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObjects-response)))
  "Returns md5sum for a message object of type 'SetObjects-response"
  "7e842254cbe0d0dd775c05000053aba0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObjects-response>)))
  "Returns full string definition for message of type '<SetObjects-response>"
  (cl:format cl:nil "# List of objects in detection queue after changes~%int64[] result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObjects-response)))
  "Returns full string definition for message of type 'SetObjects-response"
  (cl:format cl:nil "# List of objects in detection queue after changes~%int64[] result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObjects-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'result) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObjects-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObjects-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetObjects)))
  'SetObjects-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetObjects)))
  'SetObjects-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObjects)))
  "Returns string type for a service object of type '<SetObjects>"
  "extended_object_detection/SetObjects")