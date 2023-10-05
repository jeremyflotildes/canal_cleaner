;; Auto-generated. Do not edit!


(when (boundp 'extended_object_detection::ImagePoint)
  (if (not (find-package "EXTENDED_OBJECT_DETECTION"))
    (make-package "EXTENDED_OBJECT_DETECTION"))
  (shadow 'ImagePoint (find-package "EXTENDED_OBJECT_DETECTION")))
(unless (find-package "EXTENDED_OBJECT_DETECTION::IMAGEPOINT")
  (make-package "EXTENDED_OBJECT_DETECTION::IMAGEPOINT"))

(in-package "ROS")
;;//! \htmlinclude ImagePoint.msg.html


(defclass extended_object_detection::ImagePoint
  :super ros::object
  :slots (_x _y ))

(defmethod extended_object_detection::ImagePoint
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get extended_object_detection::ImagePoint :md5sum-) "bd7b43fd41d4c47bf5c703cc7d016709")
(setf (get extended_object_detection::ImagePoint :datatype-) "extended_object_detection/ImagePoint")
(setf (get extended_object_detection::ImagePoint :definition-)
      "int32 x
int32 y

")



(provide :extended_object_detection/ImagePoint "bd7b43fd41d4c47bf5c703cc7d016709")


