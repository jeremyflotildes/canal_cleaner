
(cl:in-package :asdf)

(defsystem "dnn_detect-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :dnn_detect-msg
)
  :components ((:file "_package")
    (:file "Detect" :depends-on ("_package_Detect"))
    (:file "_package_Detect" :depends-on ("_package"))
  ))