;; Auto-generated. Do not edit!


(when (boundp 'opencv_apps::Contour)
  (if (not (find-package "OPENCV_APPS"))
    (make-package "OPENCV_APPS"))
  (shadow 'Contour (find-package "OPENCV_APPS")))
(unless (find-package "OPENCV_APPS::CONTOUR")
  (make-package "OPENCV_APPS::CONTOUR"))

(in-package "ROS")
;;//! \htmlinclude Contour.msg.html


(defclass opencv_apps::Contour
  :super ros::object
  :slots (_points ))

(defmethod opencv_apps::Contour
  (:init
   (&key
    ((:points __points) ())
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; opencv_apps/Point2D[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; opencv_apps/Point2D[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; opencv_apps/Point2D[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance opencv_apps::Point2D :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get opencv_apps::Contour :md5sum-) "8f02263beef99aa03117a577a3eb879d")
(setf (get opencv_apps::Contour :datatype-) "opencv_apps/Contour")
(setf (get opencv_apps::Contour :definition-)
      "Point2D[] points

================================================================================
MSG: opencv_apps/Point2D
float64 x
float64 y


")



(provide :opencv_apps/Contour "8f02263beef99aa03117a577a3eb879d")

