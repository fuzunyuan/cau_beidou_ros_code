
(cl:in-package :asdf)

(defsystem "locate-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "navigate_and_imu_data" :depends-on ("_package_navigate_and_imu_data"))
    (:file "_package_navigate_and_imu_data" :depends-on ("_package"))
  ))