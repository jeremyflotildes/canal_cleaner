;; Auto-generated. Do not edit!


(when (boundp 'extended_object_detection::ExtractedInfo)
  (if (not (find-package "EXTENDED_OBJECT_DETECTION"))
    (make-package "EXTENDED_OBJECT_DETECTION"))
  (shadow 'ExtractedInfo (find-package "EXTENDED_OBJECT_DETECTION")))
(unless (find-package "EXTENDED_OBJECT_DETECTION::EXTRACTEDINFO")
  (make-package "EXTENDED_OBJECT_DETECTION::EXTRACTEDINFO"))

(in-package "ROS")
;;//! \htmlinclude ExtractedInfo.msg.html


(defclass extended_object_detection::ExtractedInfo
  :super ros::object
  :slots (_keys _values ))

(defmethod extended_object_detection::ExtractedInfo
  (:init
   (&key
    ((:keys __keys) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:values __values) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _keys __keys)
   (setq _values __values)
   self)
  (:keys
   (&optional __keys)
   (if __keys (setq _keys __keys)) _keys)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; string[] _keys
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _keys)) 4
    ;; string[] _values
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _keys
     (write-long (length _keys) s)
     (dolist (elem _keys)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _values
     (write-long (length _values) s)
     (dolist (elem _values)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _keys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _keys (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _keys i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _values i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get extended_object_detection::ExtractedInfo :md5sum-) "8dcfc845da12061fdc33c889527f840c")
(setf (get extended_object_detection::ExtractedInfo :datatype-) "extended_object_detection/ExtractedInfo")
(setf (get extended_object_detection::ExtractedInfo :definition-)
      "string[] keys
string[] values

")



(provide :extended_object_detection/ExtractedInfo "8dcfc845da12061fdc33c889527f840c")


