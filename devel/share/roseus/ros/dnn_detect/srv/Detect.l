;; Auto-generated. Do not edit!


(when (boundp 'dnn_detect::Detect)
  (if (not (find-package "DNN_DETECT"))
    (make-package "DNN_DETECT"))
  (shadow 'Detect (find-package "DNN_DETECT")))
(unless (find-package "DNN_DETECT::DETECT")
  (make-package "DNN_DETECT::DETECT"))
(unless (find-package "DNN_DETECT::DETECTREQUEST")
  (make-package "DNN_DETECT::DETECTREQUEST"))
(unless (find-package "DNN_DETECT::DETECTRESPONSE")
  (make-package "DNN_DETECT::DETECTRESPONSE"))

(in-package "ROS")





(defclass dnn_detect::DetectRequest
  :super ros::object
  :slots ())

(defmethod dnn_detect::DetectRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dnn_detect::DetectResponse
  :super ros::object
  :slots (_result ))

(defmethod dnn_detect::DetectResponse
  (:init
   (&key
    ((:result __result) (instance dnn_detect::DetectedObjectArray :init))
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:serialization-length
   ()
   (+
    ;; dnn_detect/DetectedObjectArray _result
    (send _result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dnn_detect/DetectedObjectArray _result
       (send _result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dnn_detect/DetectedObjectArray _result
     (send _result :deserialize buf ptr-) (incf ptr- (send _result :serialization-length))
   ;;
   self)
  )

(defclass dnn_detect::Detect
  :super ros::object
  :slots ())

(setf (get dnn_detect::Detect :md5sum-) "5234e7b88c3a208257806e2aa3d4d67e")
(setf (get dnn_detect::Detect :datatype-) "dnn_detect/Detect")
(setf (get dnn_detect::Detect :request) dnn_detect::DetectRequest)
(setf (get dnn_detect::Detect :response) dnn_detect::DetectResponse)

(defmethod dnn_detect::DetectRequest
  (:response () (instance dnn_detect::DetectResponse :init)))

(setf (get dnn_detect::DetectRequest :md5sum-) "5234e7b88c3a208257806e2aa3d4d67e")
(setf (get dnn_detect::DetectRequest :datatype-) "dnn_detect/DetectRequest")
(setf (get dnn_detect::DetectRequest :definition-)
      "---
DetectedObjectArray result


================================================================================
MSG: dnn_detect/DetectedObjectArray
Header header
DetectedObject[] objects

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
MSG: dnn_detect/DetectedObject
string class_name
float32 confidence
float32 x_min
float32 x_max
float32 y_min
float32 y_max
")

(setf (get dnn_detect::DetectResponse :md5sum-) "5234e7b88c3a208257806e2aa3d4d67e")
(setf (get dnn_detect::DetectResponse :datatype-) "dnn_detect/DetectResponse")
(setf (get dnn_detect::DetectResponse :definition-)
      "---
DetectedObjectArray result


================================================================================
MSG: dnn_detect/DetectedObjectArray
Header header
DetectedObject[] objects

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
MSG: dnn_detect/DetectedObject
string class_name
float32 confidence
float32 x_min
float32 x_max
float32 y_min
float32 y_max
")



(provide :dnn_detect/Detect "5234e7b88c3a208257806e2aa3d4d67e")


