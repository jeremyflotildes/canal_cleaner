; Auto-generated. Do not edit!


(cl:in-package dnn_detect-srv)


;//! \htmlinclude Detect-request.msg.html

(cl:defclass <Detect-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Detect-request (<Detect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnn_detect-srv:<Detect-request> is deprecated: use dnn_detect-srv:Detect-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detect-request>) ostream)
  "Serializes a message object of type '<Detect-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detect-request>) istream)
  "Deserializes a message object of type '<Detect-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detect-request>)))
  "Returns string type for a service object of type '<Detect-request>"
  "dnn_detect/DetectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detect-request)))
  "Returns string type for a service object of type 'Detect-request"
  "dnn_detect/DetectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detect-request>)))
  "Returns md5sum for a message object of type '<Detect-request>"
  "5234e7b88c3a208257806e2aa3d4d67e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detect-request)))
  "Returns md5sum for a message object of type 'Detect-request"
  "5234e7b88c3a208257806e2aa3d4d67e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detect-request>)))
  "Returns full string definition for message of type '<Detect-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detect-request)))
  "Returns full string definition for message of type 'Detect-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detect-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Detect-request
))
;//! \htmlinclude Detect-response.msg.html

(cl:defclass <Detect-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type dnn_detect-msg:DetectedObjectArray
    :initform (cl:make-instance 'dnn_detect-msg:DetectedObjectArray)))
)

(cl:defclass Detect-response (<Detect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnn_detect-srv:<Detect-response> is deprecated: use dnn_detect-srv:Detect-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Detect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnn_detect-srv:result-val is deprecated.  Use dnn_detect-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detect-response>) ostream)
  "Serializes a message object of type '<Detect-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detect-response>) istream)
  "Deserializes a message object of type '<Detect-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detect-response>)))
  "Returns string type for a service object of type '<Detect-response>"
  "dnn_detect/DetectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detect-response)))
  "Returns string type for a service object of type 'Detect-response"
  "dnn_detect/DetectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detect-response>)))
  "Returns md5sum for a message object of type '<Detect-response>"
  "5234e7b88c3a208257806e2aa3d4d67e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detect-response)))
  "Returns md5sum for a message object of type 'Detect-response"
  "5234e7b88c3a208257806e2aa3d4d67e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detect-response>)))
  "Returns full string definition for message of type '<Detect-response>"
  (cl:format cl:nil "DetectedObjectArray result~%~%~%================================================================================~%MSG: dnn_detect/DetectedObjectArray~%Header header~%DetectedObject[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dnn_detect/DetectedObject~%string class_name~%float32 confidence~%float32 x_min~%float32 x_max~%float32 y_min~%float32 y_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detect-response)))
  "Returns full string definition for message of type 'Detect-response"
  (cl:format cl:nil "DetectedObjectArray result~%~%~%================================================================================~%MSG: dnn_detect/DetectedObjectArray~%Header header~%DetectedObject[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dnn_detect/DetectedObject~%string class_name~%float32 confidence~%float32 x_min~%float32 x_max~%float32 y_min~%float32 y_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detect-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Detect-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Detect)))
  'Detect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Detect)))
  'Detect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detect)))
  "Returns string type for a service object of type '<Detect>"
  "dnn_detect/Detect")