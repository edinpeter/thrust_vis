; Auto-generated. Do not edit!


(cl:in-package imu_msg-msg)


;//! \htmlinclude pointMsg.msg.html

(cl:defclass <pointMsg> (roslisp-msg-protocol:ros-message)
  ((xCoor
    :reader xCoor
    :initarg :xCoor
    :type cl:integer
    :initform 0)
   (yCoor
    :reader yCoor
    :initarg :yCoor
    :type cl:integer
    :initform 0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:integer
    :initform 0))
)

(cl:defclass pointMsg (<pointMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pointMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pointMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imu_msg-msg:<pointMsg> is deprecated: use imu_msg-msg:pointMsg instead.")))

(cl:ensure-generic-function 'xCoor-val :lambda-list '(m))
(cl:defmethod xCoor-val ((m <pointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_msg-msg:xCoor-val is deprecated.  Use imu_msg-msg:xCoor instead.")
  (xCoor m))

(cl:ensure-generic-function 'yCoor-val :lambda-list '(m))
(cl:defmethod yCoor-val ((m <pointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_msg-msg:yCoor-val is deprecated.  Use imu_msg-msg:yCoor instead.")
  (yCoor m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <pointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_msg-msg:radius-val is deprecated.  Use imu_msg-msg:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pointMsg>) ostream)
  "Serializes a message object of type '<pointMsg>"
  (cl:let* ((signed (cl:slot-value msg 'xCoor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yCoor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'radius)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pointMsg>) istream)
  "Deserializes a message object of type '<pointMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xCoor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yCoor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'radius) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pointMsg>)))
  "Returns string type for a message object of type '<pointMsg>"
  "imu_msg/pointMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pointMsg)))
  "Returns string type for a message object of type 'pointMsg"
  "imu_msg/pointMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pointMsg>)))
  "Returns md5sum for a message object of type '<pointMsg>"
  "ee65d36311fdfaf03b60b9402901b990")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pointMsg)))
  "Returns md5sum for a message object of type 'pointMsg"
  "ee65d36311fdfaf03b60b9402901b990")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pointMsg>)))
  "Returns full string definition for message of type '<pointMsg>"
  (cl:format cl:nil "int32 xCoor~%int32 yCoor~%int32 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pointMsg)))
  "Returns full string definition for message of type 'pointMsg"
  (cl:format cl:nil "int32 xCoor~%int32 yCoor~%int32 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pointMsg>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pointMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'pointMsg
    (cl:cons ':xCoor (xCoor msg))
    (cl:cons ':yCoor (yCoor msg))
    (cl:cons ':radius (radius msg))
))
