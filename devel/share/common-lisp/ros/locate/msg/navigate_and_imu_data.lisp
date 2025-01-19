; Auto-generated. Do not edit!


(cl:in-package locate-msg)


;//! \htmlinclude navigate_and_imu_data.msg.html

(cl:defclass <navigate_and_imu_data> (roslisp-msg-protocol:ros-message)
  ((GPSWeek
    :reader GPSWeek
    :initarg :GPSWeek
    :type cl:integer
    :initform 0)
   (GPSTime
    :reader GPSTime
    :initarg :GPSTime
    :type cl:float
    :initform 0.0)
   (Heading_Angle
    :reader Heading_Angle
    :initarg :Heading_Angle
    :type cl:float
    :initform 0.0)
   (Latitude
    :reader Latitude
    :initarg :Latitude
    :type cl:float
    :initform 0.0)
   (Longitude
    :reader Longitude
    :initarg :Longitude
    :type cl:float
    :initform 0.0)
   (Altitude
    :reader Altitude
    :initarg :Altitude
    :type cl:float
    :initform 0.0)
   (Speed
    :reader Speed
    :initarg :Speed
    :type cl:float
    :initform 0.0)
   (Status
    :reader Status
    :initarg :Status
    :type cl:integer
    :initform 0)
   (Satellite_num
    :reader Satellite_num
    :initarg :Satellite_num
    :type cl:integer
    :initform 0)
   (Warning
    :reader Warning
    :initarg :Warning
    :type cl:string
    :initform "")
   (UTM_x
    :reader UTM_x
    :initarg :UTM_x
    :type cl:float
    :initform 0.0)
   (UTM_y
    :reader UTM_y
    :initarg :UTM_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass navigate_and_imu_data (<navigate_and_imu_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <navigate_and_imu_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'navigate_and_imu_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name locate-msg:<navigate_and_imu_data> is deprecated: use locate-msg:navigate_and_imu_data instead.")))

(cl:ensure-generic-function 'GPSWeek-val :lambda-list '(m))
(cl:defmethod GPSWeek-val ((m <navigate_and_imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locate-msg:GPSWeek-val is deprecated.  Use locate-msg:GPSWeek instead.")
  (GPSWeek m))

(cl:ensure-generic-function 'GPSTime-val :lambda-list '(m))
(cl:defmethod GPSTime-val ((m <navigate_and_imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locate-msg:GPSTime-val is deprecated.  Use locate-msg:GPSTime instead.")
  (GPSTime m))

(cl:ensure-generic-function 'Heading_Angle-val :lambda-list '(m))
(cl:defmethod Heading_Angle-val ((m <navigate_and_imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locate-msg:Heading_Angle-val is deprecated.  Use locate-msg:Heading_Angle instead.")
  (Heading_Angle m))

(cl:ensure-generic-function 'Latitude-val :lambda-list '(m))
(cl:defmethod Latitude-val ((m <navigate_and_imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locate-msg:Latitude-val is deprecated.  Use locate-msg:Latitude instead.")
  (Latitude m))

(cl:ensure-generic-function 'Longitude-val :lambda-list '(m))
(cl:defmethod Longitude-val ((m <navigate_and_imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locate-msg:Longitude-val is deprecated.  Use locate-msg:Longitude instead.")
  (Longitude m))

(cl:ensure-generic-function 'Altitude-val :lambda-list '(m))
(cl:defmethod Altitude-val ((m <navigate_and_imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locate-msg:Altitude-val is deprecated.  Use locate-msg:Altitude instead.")
  (Altitude m))

(cl:ensure-generic-function 'Speed-val :lambda-list '(m))
(cl:defmethod Speed-val ((m <navigate_and_imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locate-msg:Speed-val is deprecated.  Use locate-msg:Speed instead.")
  (Speed m))

(cl:ensure-generic-function 'Status-val :lambda-list '(m))
(cl:defmethod Status-val ((m <navigate_and_imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locate-msg:Status-val is deprecated.  Use locate-msg:Status instead.")
  (Status m))

(cl:ensure-generic-function 'Satellite_num-val :lambda-list '(m))
(cl:defmethod Satellite_num-val ((m <navigate_and_imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locate-msg:Satellite_num-val is deprecated.  Use locate-msg:Satellite_num instead.")
  (Satellite_num m))

(cl:ensure-generic-function 'Warning-val :lambda-list '(m))
(cl:defmethod Warning-val ((m <navigate_and_imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locate-msg:Warning-val is deprecated.  Use locate-msg:Warning instead.")
  (Warning m))

(cl:ensure-generic-function 'UTM_x-val :lambda-list '(m))
(cl:defmethod UTM_x-val ((m <navigate_and_imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locate-msg:UTM_x-val is deprecated.  Use locate-msg:UTM_x instead.")
  (UTM_x m))

(cl:ensure-generic-function 'UTM_y-val :lambda-list '(m))
(cl:defmethod UTM_y-val ((m <navigate_and_imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locate-msg:UTM_y-val is deprecated.  Use locate-msg:UTM_y instead.")
  (UTM_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <navigate_and_imu_data>) ostream)
  "Serializes a message object of type '<navigate_and_imu_data>"
  (cl:let* ((signed (cl:slot-value msg 'GPSWeek)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'GPSTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Heading_Angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Satellite_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Warning))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Warning))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'UTM_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'UTM_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <navigate_and_imu_data>) istream)
  "Deserializes a message object of type '<navigate_and_imu_data>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'GPSWeek) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GPSTime) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Heading_Angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Altitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Satellite_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Warning) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Warning) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'UTM_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'UTM_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<navigate_and_imu_data>)))
  "Returns string type for a message object of type '<navigate_and_imu_data>"
  "locate/navigate_and_imu_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'navigate_and_imu_data)))
  "Returns string type for a message object of type 'navigate_and_imu_data"
  "locate/navigate_and_imu_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<navigate_and_imu_data>)))
  "Returns md5sum for a message object of type '<navigate_and_imu_data>"
  "5fa00f7bd774592428828ebc763abd79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'navigate_and_imu_data)))
  "Returns md5sum for a message object of type 'navigate_and_imu_data"
  "5fa00f7bd774592428828ebc763abd79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<navigate_and_imu_data>)))
  "Returns full string definition for message of type '<navigate_and_imu_data>"
  (cl:format cl:nil "int32 GPSWeek~%float64 GPSTime~%float64 Heading_Angle~%float64 Latitude~%float64 Longitude~%float64 Altitude~%float64 Speed~%int32 Status~%int32 Satellite_num~%string Warning~%float64 UTM_x~%float64 UTM_y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'navigate_and_imu_data)))
  "Returns full string definition for message of type 'navigate_and_imu_data"
  (cl:format cl:nil "int32 GPSWeek~%float64 GPSTime~%float64 Heading_Angle~%float64 Latitude~%float64 Longitude~%float64 Altitude~%float64 Speed~%int32 Status~%int32 Satellite_num~%string Warning~%float64 UTM_x~%float64 UTM_y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <navigate_and_imu_data>))
  (cl:+ 0
     4
     8
     8
     8
     8
     8
     8
     4
     4
     4 (cl:length (cl:slot-value msg 'Warning))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <navigate_and_imu_data>))
  "Converts a ROS message object to a list"
  (cl:list 'navigate_and_imu_data
    (cl:cons ':GPSWeek (GPSWeek msg))
    (cl:cons ':GPSTime (GPSTime msg))
    (cl:cons ':Heading_Angle (Heading_Angle msg))
    (cl:cons ':Latitude (Latitude msg))
    (cl:cons ':Longitude (Longitude msg))
    (cl:cons ':Altitude (Altitude msg))
    (cl:cons ':Speed (Speed msg))
    (cl:cons ':Status (Status msg))
    (cl:cons ':Satellite_num (Satellite_num msg))
    (cl:cons ':Warning (Warning msg))
    (cl:cons ':UTM_x (UTM_x msg))
    (cl:cons ':UTM_y (UTM_y msg))
))
