;; Auto-generated. Do not edit!


(when (boundp 'dnn_detect::DetectedObject)
  (if (not (find-package "DNN_DETECT"))
    (make-package "DNN_DETECT"))
  (shadow 'DetectedObject (find-package "DNN_DETECT")))
(unless (find-package "DNN_DETECT::DETECTEDOBJECT")
  (make-package "DNN_DETECT::DETECTEDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude DetectedObject.msg.html


(defclass dnn_detect::DetectedObject
  :super ros::object
  :slots (_class_name _confidence _x_min _x_max _y_min _y_max ))

(defmethod dnn_detect::DetectedObject
  (:init
   (&key
    ((:class_name __class_name) "")
    ((:confidence __confidence) 0.0)
    ((:x_min __x_min) 0.0)
    ((:x_max __x_max) 0.0)
    ((:y_min __y_min) 0.0)
    ((:y_max __y_max) 0.0)
    )
   (send-super :init)
   (setq _class_name (string __class_name))
   (setq _confidence (float __confidence))
   (setq _x_min (float __x_min))
   (setq _x_max (float __x_max))
   (setq _y_min (float __y_min))
   (setq _y_max (float __y_max))
   self)
  (:class_name
   (&optional __class_name)
   (if __class_name (setq _class_name __class_name)) _class_name)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:x_min
   (&optional __x_min)
   (if __x_min (setq _x_min __x_min)) _x_min)
  (:x_max
   (&optional __x_max)
   (if __x_max (setq _x_max __x_max)) _x_max)
  (:y_min
   (&optional __y_min)
   (if __y_min (setq _y_min __y_min)) _y_min)
  (:y_max
   (&optional __y_max)
   (if __y_max (setq _y_max __y_max)) _y_max)
  (:serialization-length
   ()
   (+
    ;; string _class_name
    4 (length _class_name)
    ;; float32 _confidence
    4
    ;; float32 _x_min
    4
    ;; float32 _x_max
    4
    ;; float32 _y_min
    4
    ;; float32 _y_max
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _class_name
       (write-long (length _class_name) s) (princ _class_name s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_min
       (sys::poke _x_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_max
       (sys::poke _x_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_min
       (sys::poke _y_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_max
       (sys::poke _y_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _class_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _class_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_min
     (setq _x_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_max
     (setq _x_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_min
     (setq _y_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_max
     (setq _y_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dnn_detect::DetectedObject :md5sum-) "c0b57b793d09a04a117353f677edfe58")
(setf (get dnn_detect::DetectedObject :datatype-) "dnn_detect/DetectedObject")
(setf (get dnn_detect::DetectedObject :definition-)
      "string class_name
float32 confidence
float32 x_min
float32 x_max
float32 y_min
float32 y_max

")



(provide :dnn_detect/DetectedObject "c0b57b793d09a04a117353f677edfe58")


