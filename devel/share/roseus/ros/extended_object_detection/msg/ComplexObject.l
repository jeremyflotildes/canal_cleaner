;; Auto-generated. Do not edit!


(when (boundp 'extended_object_detection::ComplexObject)
  (if (not (find-package "EXTENDED_OBJECT_DETECTION"))
    (make-package "EXTENDED_OBJECT_DETECTION"))
  (shadow 'ComplexObject (find-package "EXTENDED_OBJECT_DETECTION")))
(unless (find-package "EXTENDED_OBJECT_DETECTION::COMPLEXOBJECT")
  (make-package "EXTENDED_OBJECT_DETECTION::COMPLEXOBJECT"))

(in-package "ROS")
;;//! \htmlinclude ComplexObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass extended_object_detection::ComplexObject
  :super ros::object
  :slots (_type_id _type_name _score _extracted_info _rect _transform _objects ))

(defmethod extended_object_detection::ComplexObject
  (:init
   (&key
    ((:type_id __type_id) 0)
    ((:type_name __type_name) "")
    ((:score __score) 0.0)
    ((:extracted_info __extracted_info) (instance extended_object_detection::ExtractedInfo :init))
    ((:rect __rect) (instance extended_object_detection::Rect :init))
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    ((:objects __objects) ())
    )
   (send-super :init)
   (setq _type_id (round __type_id))
   (setq _type_name (string __type_name))
   (setq _score (float __score))
   (setq _extracted_info __extracted_info)
   (setq _rect __rect)
   (setq _transform __transform)
   (setq _objects __objects)
   self)
  (:type_id
   (&optional __type_id)
   (if __type_id (setq _type_id __type_id)) _type_id)
  (:type_name
   (&optional __type_name)
   (if __type_name (setq _type_name __type_name)) _type_name)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:extracted_info
   (&rest __extracted_info)
   (if (keywordp (car __extracted_info))
       (send* _extracted_info __extracted_info)
     (progn
       (if __extracted_info (setq _extracted_info (car __extracted_info)))
       _extracted_info)))
  (:rect
   (&rest __rect)
   (if (keywordp (car __rect))
       (send* _rect __rect)
     (progn
       (if __rect (setq _rect (car __rect)))
       _rect)))
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; int32 _type_id
    4
    ;; string _type_name
    4 (length _type_name)
    ;; float64 _score
    8
    ;; extended_object_detection/ExtractedInfo _extracted_info
    (send _extracted_info :serialization-length)
    ;; extended_object_detection/Rect _rect
    (send _rect :serialization-length)
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ;; extended_object_detection/SimpleObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type_id
       (write-long _type_id s)
     ;; string _type_name
       (write-long (length _type_name) s) (princ _type_name s)
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; extended_object_detection/ExtractedInfo _extracted_info
       (send _extracted_info :serialize s)
     ;; extended_object_detection/Rect _rect
       (send _rect :serialize s)
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;; extended_object_detection/SimpleObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type_id
     (setq _type_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _type_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; extended_object_detection/ExtractedInfo _extracted_info
     (send _extracted_info :deserialize buf ptr-) (incf ptr- (send _extracted_info :serialization-length))
   ;; extended_object_detection/Rect _rect
     (send _rect :deserialize buf ptr-) (incf ptr- (send _rect :serialization-length))
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; extended_object_detection/SimpleObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance extended_object_detection::SimpleObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get extended_object_detection::ComplexObject :md5sum-) "fa224b9c30007427e3d41721a134e56d")
(setf (get extended_object_detection::ComplexObject :datatype-) "extended_object_detection/ComplexObject")
(setf (get extended_object_detection::ComplexObject :definition-)
      "int32 type_id                                       # id of object type, according to ObjectBase
string type_name                                    # name of object type, according to ObjectBase

float64 score                                       # confidence coefficient of current result
extended_object_detection/ExtractedInfo extracted_info

extended_object_detection/Rect rect                 # object frames on image and 3d coordinates
geometry_msgs/Transform transform                   # transform to object center in meters, if z=1 distance is unknow, only direction
extended_object_detection/SimpleObject[] objects    # set of simple objects form current complex

================================================================================
MSG: extended_object_detection/ExtractedInfo
string[] keys
string[] values

================================================================================
MSG: extended_object_detection/Rect
extended_object_detection/ImagePoint left_bottom
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
================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: extended_object_detection/SimpleObject
# object info
int32 type_id                               # id of type, corresponded to object base
string type_name                            # name of type, corresponded to object base
float64 score                               # confidence coefficient of current result
extended_object_detection/ExtractedInfo extracted_info

# object position and geometry
geometry_msgs/Transform transform           # transform to object center
extended_object_detection/Rect rect         # object frames on image and 3d coordinates
extended_object_detection/Contour contour   # contour image and 3d info

# tracking
extended_object_detection/Track track       # information about tracking if it is enabled





================================================================================
MSG: extended_object_detection/Contour
extended_object_detection/ImagePoint[] image_points   # points on image
geometry_msgs/Vector3[] contourTranslates             # translations to contour points

================================================================================
MSG: extended_object_detection/Track
uint8 DETECTED = 1  # Current result is obtained by detector
uint8 TRACKED = 2  # Current result is obtained by opencv tracker
uint8 LOST = 3      # Failed to obtain result, this is last saved

int32 id            # track unique id (in group of one object)
uint8 status        # status described above
#extended_object_detection/ImagePoint[] image_point_history
#geometry_msgs/Transform[] transform_history

")



(provide :extended_object_detection/ComplexObject "fa224b9c30007427e3d41721a134e56d")


