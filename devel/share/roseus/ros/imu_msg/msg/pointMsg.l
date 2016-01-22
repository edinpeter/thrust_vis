;; Auto-generated. Do not edit!


(when (boundp 'imu_msg::pointMsg)
  (if (not (find-package "IMU_MSG"))
    (make-package "IMU_MSG"))
  (shadow 'pointMsg (find-package "IMU_MSG")))
(unless (find-package "IMU_MSG::POINTMSG")
  (make-package "IMU_MSG::POINTMSG"))

(in-package "ROS")
;;//! \htmlinclude pointMsg.msg.html


(defclass imu_msg::pointMsg
  :super ros::object
  :slots (_xCoor _yCoor _radius ))

(defmethod imu_msg::pointMsg
  (:init
   (&key
    ((:xCoor __xCoor) 0)
    ((:yCoor __yCoor) 0)
    ((:radius __radius) 0)
    )
   (send-super :init)
   (setq _xCoor (round __xCoor))
   (setq _yCoor (round __yCoor))
   (setq _radius (round __radius))
   self)
  (:xCoor
   (&optional __xCoor)
   (if __xCoor (setq _xCoor __xCoor)) _xCoor)
  (:yCoor
   (&optional __yCoor)
   (if __yCoor (setq _yCoor __yCoor)) _yCoor)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; int32 _xCoor
    4
    ;; int32 _yCoor
    4
    ;; int32 _radius
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _xCoor
       (write-long _xCoor s)
     ;; int32 _yCoor
       (write-long _yCoor s)
     ;; int32 _radius
       (write-long _radius s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _xCoor
     (setq _xCoor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _yCoor
     (setq _yCoor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _radius
     (setq _radius (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get imu_msg::pointMsg :md5sum-) "ee65d36311fdfaf03b60b9402901b990")
(setf (get imu_msg::pointMsg :datatype-) "imu_msg/pointMsg")
(setf (get imu_msg::pointMsg :definition-)
      "int32 xCoor
int32 yCoor
int32 radius
")



(provide :imu_msg/pointMsg "ee65d36311fdfaf03b60b9402901b990")


