
(cl:in-package :asdf)

(defsystem "extended_object_detection-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetSimpleObjects" :depends-on ("_package_SetSimpleObjects"))
    (:file "_package_SetSimpleObjects" :depends-on ("_package"))
  ))