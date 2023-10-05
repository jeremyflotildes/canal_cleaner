
(cl:in-package :asdf)

(defsystem "extended_object_detection-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ComplexObject" :depends-on ("_package_ComplexObject"))
    (:file "_package_ComplexObject" :depends-on ("_package"))
    (:file "ComplexObjectArray" :depends-on ("_package_ComplexObjectArray"))
    (:file "_package_ComplexObjectArray" :depends-on ("_package"))
    (:file "Contour" :depends-on ("_package_Contour"))
    (:file "_package_Contour" :depends-on ("_package"))
    (:file "ExtractedInfo" :depends-on ("_package_ExtractedInfo"))
    (:file "_package_ExtractedInfo" :depends-on ("_package"))
    (:file "ImagePoint" :depends-on ("_package_ImagePoint"))
    (:file "_package_ImagePoint" :depends-on ("_package"))
    (:file "Rect" :depends-on ("_package_Rect"))
    (:file "_package_Rect" :depends-on ("_package"))
    (:file "SimpleObject" :depends-on ("_package_SimpleObject"))
    (:file "_package_SimpleObject" :depends-on ("_package"))
    (:file "SimpleObjectArray" :depends-on ("_package_SimpleObjectArray"))
    (:file "_package_SimpleObjectArray" :depends-on ("_package"))
    (:file "Track" :depends-on ("_package_Track"))
    (:file "_package_Track" :depends-on ("_package"))
  ))