;; Auto-generated. Do not edit!


(when (boundp 'extended_object_detection::Rect)
  (if (not (find-package "EXTENDED_OBJECT_DETECTION"))
    (make-package "EXTENDED_OBJECT_DETECTION"))
  (shadow 'Rect (find-package "EXTENDED_OBJECT_DETECTION")))
(unless (find-package "EXTENDED_OBJECT_DETECTION::RECT")
  (make-package "EXTENDED_OBJECT_DETECTION::RECT"))

(in-package "ROS")
;;//! \htmlinclude Rect.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass extended_object_detection::Rect
  :super ros::object
  :slots (_left_bottom _right_up _cornerTranslates ))

(defmethod extended_object_detection::Rect
  (:init
   (&key
    ((:left_bottom __left_bottom) (instance extended_object_detection::ImagePoint :init))
    ((:right_up __right_up) (instance extended_object_detection::ImagePoint :init))
    ((:cornerTranslates __cornerTranslates) ())
    )
   (send-super :init)
   (setq _left_bottom __left_bottom)
   (setq _right_up __right_up)
   (setq _cornerTranslates __cornerTranslates)
   self)
  (:left_bottom
   (&rest __left_bottom)
   (if (keywordp (car __left_bottom))
       (send* _left_bottom __left_bottom)
     (progn
       (if __left_bottom (setq _left_bottom (car __left_bottom)))
       _left_bottom)))
  (:right_up
   (&rest __right_up)
   (if (keywordp (car __right_up))
       (send* _right_up __right_up)
     (progn
       (if __right_up (setq _right_up (car __right_up)))
       _right_up)))
  (:cornerTranslates
   (&rest __cornerTranslates)
   (if (keywordp (car __cornerTranslates))
       (send* _cornerTranslates __cornerTranslates)
     (progn
       (if __cornerTranslates (setq _cornerTranslates (car __cornerTranslates)))
       _cornerTranslates)))
  (:serialization-length
   ()
   (+
    ;; extended_object_detection/ImagePoint _left_bottom
    (send _left_bottom :serialization-length)
    ;; extended_object_detection/ImagePoint _right_up
    (send _right_up :serialization-length)
    ;; geometry_msgs/Vector3[] _cornerTranslates
    (apply #'+ (send-all _cornerTranslates :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; extended_object_detection/ImagePoint _left_bottom
       (send _left_bottom :serialize s)
     ;; extended_object_detection/ImagePoint _right_up
       (send _right_up :serialize s)
     ;; geometry_msgs/Vector3[] _cornerTranslates
     (write-long (length _cornerTranslates) s)
     (dolist (elem _cornerTranslates)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; extended_object_detection/ImagePoint _left_bottom
     (send _left_bottom :deserialize buf ptr-) (incf ptr- (send _left_bottom :serialization-length))
   ;; extended_object_detection/ImagePoint _right_up
     (send _right_up :deserialize buf ptr-) (incf ptr- (send _right_up :serialization-length))
   ;; geometry_msgs/Vector3[] _cornerTranslates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cornerTranslates (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _cornerTranslates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get extended_object_detection::Rect :md5sum-) "b1bcb70028ba76b66f0308494067e67d")
(setf (get extended_object_detection::Rect :datatype-) "extended_object_detection/Rect")
(setf (get extended_object_detection::Rect :definition-)
      "extended_object_detection/ImagePoint left_bottom
extended_object_detection/ImagePoint right_up
geometry_msgs/Vector3[] cornerTranslates    # translate to rect corners, from bottom left in clock-wice direction, if z value is 1, it means that it is unit vector in homogeneous coordnates 


================================================================================
MSG: extended_object_detection/ImagePoint
int32 x
int32 y

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :extended_object_detection/Rect "b1bcb70028ba76b66f0308494067e67d")


