
(cl:in-package :asdf)

(defsystem "imu_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "pointMsg" :depends-on ("_package_pointMsg"))
    (:file "_package_pointMsg" :depends-on ("_package"))
    (:file "FilterOutput" :depends-on ("_package_FilterOutput"))
    (:file "_package_FilterOutput" :depends-on ("_package"))
    (:file "statsMsg" :depends-on ("_package_statsMsg"))
    (:file "_package_statsMsg" :depends-on ("_package"))
  ))