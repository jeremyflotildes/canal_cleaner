;; Auto-generated. Do not edit!


(when (boundp 'extended_object_detection::Contour)
  (if (not (find-package "EXTENDED_OBJECT_DETECTION"))
    (make-package "EXTENDED_OBJECT_DETECTION"))
  (shadow 'Contour (find-package "EXTENDED_OBJECT_DETECTION")))
(unless (find-package "EXTENDED_OBJECT_DETECTION::CONTOUR")
  (make-package "EXTENDED_OBJECT_DETECTION::CONTOUR"))

(in-package "ROS")
;;//! \htmlinclude Contour.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass extended_object_detection::Contour
  :super ros::object
  :slots (_image_points _contourTranslates ))

(defmethod extended_object_detection::Contour
  (:init
   (&key
    ((:image_points __image_points) ())
    ((:contourTranslates __contourTranslates) ())
    )
   (send-super :init)
   (setq _image_points __image_points)
   (setq _contourTranslates __contourTranslates)
   self)
  (:image_points
   (&rest __image_points)
   (if (keywordp (car __image_points))
       (send* _image_points __image_points)
     (progn
       (if __image_points (setq _image_points (car __image_points)))
       _image_points)))
  (:contourTranslates
   (&rest __contourTranslates)
   (if (keywordp (car __contourTranslates))
       (send* _contourTranslates __contourTranslates)
     (progn
       (if __contourTranslates (setq _contourTranslates (car __contourTranslates)))
       _contourTranslates)))
  (:serialization-length
   ()
   (+
    ;; extended_object_detection/ImagePoint[] _image_points
    (apply #'+ (send-all _image_points :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _contourTranslates
    (apply #'+ (send-all _contourTranslates :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; extended_object_detection/ImagePoint[] _image_points
     (write-long (length _image_points) s)
     (dolist (elem _image_points)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _contourTranslates
     (write-long (length _contourTranslates) s)
     (dolist (elem _contourTranslates)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; extended_object_detection/ImagePoint[] _image_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _image_points (let (r) (dotimes (i n) (push (instance extended_object_detection::ImagePoint :init) r)) r))
     (dolist (elem- _image_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _contourTranslates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contourTranslates (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _contourTranslates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get extended_object_detection::Contour :md5sum-) "ff58bd338df15e277a5ae5e64f7a36f1")
(setf (get extended_object_detection::Contour :datatype-) "extended_object_detection/Contour")
(setf (get extended_object_detection::Contour :definition-)
      "extended_object_detection/ImagePoint[] image_points   # points on image
geometry_msgs/Vector3[] contourTranslates             # translations to contour points

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



(provide :extended_object_detection/Contour "ff58bd338df15e277a5ae5e64f7a36f1")


