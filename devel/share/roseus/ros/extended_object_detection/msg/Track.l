;; Auto-generated. Do not edit!


(when (boundp 'extended_object_detection::Track)
  (if (not (find-package "EXTENDED_OBJECT_DETECTION"))
    (make-package "EXTENDED_OBJECT_DETECTION"))
  (shadow 'Track (find-package "EXTENDED_OBJECT_DETECTION")))
(unless (find-package "EXTENDED_OBJECT_DETECTION::TRACK")
  (make-package "EXTENDED_OBJECT_DETECTION::TRACK"))

(in-package "ROS")
;;//! \htmlinclude Track.msg.html


(intern "*DETECTED*" (find-package "EXTENDED_OBJECT_DETECTION::TRACK"))
(shadow '*DETECTED* (find-package "EXTENDED_OBJECT_DETECTION::TRACK"))
(defconstant extended_object_detection::Track::*DETECTED* 1)
(intern "*TRACKED*" (find-package "EXTENDED_OBJECT_DETECTION::TRACK"))
(shadow '*TRACKED* (find-package "EXTENDED_OBJECT_DETECTION::TRACK"))
(defconstant extended_object_detection::Track::*TRACKED* 2)
(intern "*LOST*" (find-package "EXTENDED_OBJECT_DETECTION::TRACK"))
(shadow '*LOST* (find-package "EXTENDED_OBJECT_DETECTION::TRACK"))
(defconstant extended_object_detection::Track::*LOST* 3)

(defun extended_object_detection::Track-to-symbol (const)
  (cond
        ((= const 1) 'extended_object_detection::Track::*DETECTED*)
        ((= const 2) 'extended_object_detection::Track::*TRACKED*)
        ((= const 3) 'extended_object_detection::Track::*LOST*)
        (t nil)))

(defclass extended_object_detection::Track
  :super ros::object
  :slots (_id _status ))

(defmethod extended_object_detection::Track
  (:init
   (&key
    ((:id __id) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _status (round __status))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get extended_object_detection::Track :md5sum-) "ec99f63be21cc6a42fd795d224533ab1")
(setf (get extended_object_detection::Track :datatype-) "extended_object_detection/Track")
(setf (get extended_object_detection::Track :definition-)
      "uint8 DETECTED = 1  # Current result is obtained by detector
uint8 TRACKED = 2  # Current result is obtained by opencv tracker
uint8 LOST = 3      # Failed to obtain result, this is last saved

int32 id            # track unique id (in group of one object)
uint8 status        # status described above
#extended_object_detection/ImagePoint[] image_point_history
#geometry_msgs/Transform[] transform_history

")



(provide :extended_object_detection/Track "ec99f63be21cc6a42fd795d224533ab1")


