;; Auto-generated. Do not edit!


(when (boundp 'extended_object_detection::SetSimpleObjects)
  (if (not (find-package "EXTENDED_OBJECT_DETECTION"))
    (make-package "EXTENDED_OBJECT_DETECTION"))
  (shadow 'SetSimpleObjects (find-package "EXTENDED_OBJECT_DETECTION")))
(unless (find-package "EXTENDED_OBJECT_DETECTION::SETSIMPLEOBJECTS")
  (make-package "EXTENDED_OBJECT_DETECTION::SETSIMPLEOBJECTS"))
(unless (find-package "EXTENDED_OBJECT_DETECTION::SETSIMPLEOBJECTSREQUEST")
  (make-package "EXTENDED_OBJECT_DETECTION::SETSIMPLEOBJECTSREQUEST"))
(unless (find-package "EXTENDED_OBJECT_DETECTION::SETSIMPLEOBJECTSRESPONSE")
  (make-package "EXTENDED_OBJECT_DETECTION::SETSIMPLEOBJECTSRESPONSE"))

(in-package "ROS")





(defclass extended_object_detection::SetSimpleObjectsRequest
  :super ros::object
  :slots (_changes _remove_all _add_all ))

(defmethod extended_object_detection::SetSimpleObjectsRequest
  (:init
   (&key
    ((:changes __changes) (make-array 0 :initial-element 0 :element-type :integer))
    ((:remove_all __remove_all) nil)
    ((:add_all __add_all) nil)
    )
   (send-super :init)
   (setq _changes __changes)
   (setq _remove_all __remove_all)
   (setq _add_all __add_all)
   self)
  (:changes
   (&optional __changes)
   (if __changes (setq _changes __changes)) _changes)
  (:remove_all
   (&optional (__remove_all :null))
   (if (not (eq __remove_all :null)) (setq _remove_all __remove_all)) _remove_all)
  (:add_all
   (&optional (__add_all :null))
   (if (not (eq __add_all :null)) (setq _add_all __add_all)) _add_all)
  (:serialization-length
   ()
   (+
    ;; int64[] _changes
    (* 8    (length _changes)) 4
    ;; bool _remove_all
    1
    ;; bool _add_all
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[] _changes
     (write-long (length _changes) s)
     (dotimes (i (length _changes))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _changes i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _changes i)) (= (length ((elt _changes i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _changes i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _changes i) . bv) 1) -1) s))
             ((and (class (elt _changes i)) (= (length ((elt _changes i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _changes i) . bv) 0) s)
              (write-long (if (>= (elt _changes i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _changes i) s)(write-long (if (>= (elt _changes i) 0) 0 #xffffffff) s)))
       )
     ;; bool _remove_all
       (if _remove_all (write-byte -1 s) (write-byte 0 s))
     ;; bool _add_all
       (if _add_all (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[] _changes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _changes (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _changes i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _changes i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; bool _remove_all
     (setq _remove_all (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _add_all
     (setq _add_all (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass extended_object_detection::SetSimpleObjectsResponse
  :super ros::object
  :slots (_result ))

(defmethod extended_object_detection::SetSimpleObjectsResponse
  (:init
   (&key
    ((:result __result) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int64[] _result
    (* 8    (length _result)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[] _result
     (write-long (length _result) s)
     (dotimes (i (length _result))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _result i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _result i)) (= (length ((elt _result i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _result i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _result i) . bv) 1) -1) s))
             ((and (class (elt _result i)) (= (length ((elt _result i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _result i) . bv) 0) s)
              (write-long (if (>= (elt _result i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _result i) s)(write-long (if (>= (elt _result i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[] _result
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _result i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _result i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(defclass extended_object_detection::SetSimpleObjects
  :super ros::object
  :slots ())

(setf (get extended_object_detection::SetSimpleObjects :md5sum-) "7e842254cbe0d0dd775c05000053aba0")
(setf (get extended_object_detection::SetSimpleObjects :datatype-) "extended_object_detection/SetSimpleObjects")
(setf (get extended_object_detection::SetSimpleObjects :request) extended_object_detection::SetSimpleObjectsRequest)
(setf (get extended_object_detection::SetSimpleObjects :response) extended_object_detection::SetSimpleObjectsResponse)

(defmethod extended_object_detection::SetSimpleObjectsRequest
  (:response () (instance extended_object_detection::SetSimpleObjectsResponse :init)))

(setf (get extended_object_detection::SetSimpleObjectsRequest :md5sum-) "7e842254cbe0d0dd775c05000053aba0")
(setf (get extended_object_detection::SetSimpleObjectsRequest :datatype-) "extended_object_detection/SetSimpleObjectsRequest")
(setf (get extended_object_detection::SetSimpleObjectsRequest :definition-)
      "# Asks to remove or add objects to detection queue by its ID's

# List of changes, contains objects ID
# For remove object from detection queue add its id with negative sign
# To add object to detection queue add its id
int64[] changes

# if true removes all objects (node detects nothing)
bool remove_all

# if true includes all objects from base to detection queue 
bool add_all

# if both remove_all and add_all are true, does nothing
---
# List of objects in detection queue after changes
int64[] result

")

(setf (get extended_object_detection::SetSimpleObjectsResponse :md5sum-) "7e842254cbe0d0dd775c05000053aba0")
(setf (get extended_object_detection::SetSimpleObjectsResponse :datatype-) "extended_object_detection/SetSimpleObjectsResponse")
(setf (get extended_object_detection::SetSimpleObjectsResponse :definition-)
      "# Asks to remove or add objects to detection queue by its ID's

# List of changes, contains objects ID
# For remove object from detection queue add its id with negative sign
# To add object to detection queue add its id
int64[] changes

# if true removes all objects (node detects nothing)
bool remove_all

# if true includes all objects from base to detection queue 
bool add_all

# if both remove_all and add_all are true, does nothing
---
# List of objects in detection queue after changes
int64[] result

")



(provide :extended_object_detection/SetSimpleObjects "7e842254cbe0d0dd775c05000053aba0")


