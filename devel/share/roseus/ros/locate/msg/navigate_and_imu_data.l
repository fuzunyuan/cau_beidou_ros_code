;; Auto-generated. Do not edit!


(when (boundp 'locate::navigate_and_imu_data)
  (if (not (find-package "LOCATE"))
    (make-package "LOCATE"))
  (shadow 'navigate_and_imu_data (find-package "LOCATE")))
(unless (find-package "LOCATE::NAVIGATE_AND_IMU_DATA")
  (make-package "LOCATE::NAVIGATE_AND_IMU_DATA"))

(in-package "ROS")
;;//! \htmlinclude navigate_and_imu_data.msg.html


(defclass locate::navigate_and_imu_data
  :super ros::object
  :slots (_GPSWeek _GPSTime _Heading_Angle _Latitude _Longitude _Altitude _Speed _Status _Satellite_num _Warning _UTM_x _UTM_y ))

(defmethod locate::navigate_and_imu_data
  (:init
   (&key
    ((:GPSWeek __GPSWeek) 0)
    ((:GPSTime __GPSTime) 0.0)
    ((:Heading_Angle __Heading_Angle) 0.0)
    ((:Latitude __Latitude) 0.0)
    ((:Longitude __Longitude) 0.0)
    ((:Altitude __Altitude) 0.0)
    ((:Speed __Speed) 0.0)
    ((:Status __Status) 0)
    ((:Satellite_num __Satellite_num) 0)
    ((:Warning __Warning) "")
    ((:UTM_x __UTM_x) 0.0)
    ((:UTM_y __UTM_y) 0.0)
    )
   (send-super :init)
   (setq _GPSWeek (round __GPSWeek))
   (setq _GPSTime (float __GPSTime))
   (setq _Heading_Angle (float __Heading_Angle))
   (setq _Latitude (float __Latitude))
   (setq _Longitude (float __Longitude))
   (setq _Altitude (float __Altitude))
   (setq _Speed (float __Speed))
   (setq _Status (round __Status))
   (setq _Satellite_num (round __Satellite_num))
   (setq _Warning (string __Warning))
   (setq _UTM_x (float __UTM_x))
   (setq _UTM_y (float __UTM_y))
   self)
  (:GPSWeek
   (&optional __GPSWeek)
   (if __GPSWeek (setq _GPSWeek __GPSWeek)) _GPSWeek)
  (:GPSTime
   (&optional __GPSTime)
   (if __GPSTime (setq _GPSTime __GPSTime)) _GPSTime)
  (:Heading_Angle
   (&optional __Heading_Angle)
   (if __Heading_Angle (setq _Heading_Angle __Heading_Angle)) _Heading_Angle)
  (:Latitude
   (&optional __Latitude)
   (if __Latitude (setq _Latitude __Latitude)) _Latitude)
  (:Longitude
   (&optional __Longitude)
   (if __Longitude (setq _Longitude __Longitude)) _Longitude)
  (:Altitude
   (&optional __Altitude)
   (if __Altitude (setq _Altitude __Altitude)) _Altitude)
  (:Speed
   (&optional __Speed)
   (if __Speed (setq _Speed __Speed)) _Speed)
  (:Status
   (&optional __Status)
   (if __Status (setq _Status __Status)) _Status)
  (:Satellite_num
   (&optional __Satellite_num)
   (if __Satellite_num (setq _Satellite_num __Satellite_num)) _Satellite_num)
  (:Warning
   (&optional __Warning)
   (if __Warning (setq _Warning __Warning)) _Warning)
  (:UTM_x
   (&optional __UTM_x)
   (if __UTM_x (setq _UTM_x __UTM_x)) _UTM_x)
  (:UTM_y
   (&optional __UTM_y)
   (if __UTM_y (setq _UTM_y __UTM_y)) _UTM_y)
  (:serialization-length
   ()
   (+
    ;; int32 _GPSWeek
    4
    ;; float64 _GPSTime
    8
    ;; float64 _Heading_Angle
    8
    ;; float64 _Latitude
    8
    ;; float64 _Longitude
    8
    ;; float64 _Altitude
    8
    ;; float64 _Speed
    8
    ;; int32 _Status
    4
    ;; int32 _Satellite_num
    4
    ;; string _Warning
    4 (length _Warning)
    ;; float64 _UTM_x
    8
    ;; float64 _UTM_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _GPSWeek
       (write-long _GPSWeek s)
     ;; float64 _GPSTime
       (sys::poke _GPSTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Heading_Angle
       (sys::poke _Heading_Angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Latitude
       (sys::poke _Latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Longitude
       (sys::poke _Longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Altitude
       (sys::poke _Altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Speed
       (sys::poke _Speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _Status
       (write-long _Status s)
     ;; int32 _Satellite_num
       (write-long _Satellite_num s)
     ;; string _Warning
       (write-long (length _Warning) s) (princ _Warning s)
     ;; float64 _UTM_x
       (sys::poke _UTM_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _UTM_y
       (sys::poke _UTM_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _GPSWeek
     (setq _GPSWeek (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _GPSTime
     (setq _GPSTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Heading_Angle
     (setq _Heading_Angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Latitude
     (setq _Latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Longitude
     (setq _Longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Altitude
     (setq _Altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Speed
     (setq _Speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _Status
     (setq _Status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Satellite_num
     (setq _Satellite_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _Warning
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Warning (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _UTM_x
     (setq _UTM_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _UTM_y
     (setq _UTM_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get locate::navigate_and_imu_data :md5sum-) "5fa00f7bd774592428828ebc763abd79")
(setf (get locate::navigate_and_imu_data :datatype-) "locate/navigate_and_imu_data")
(setf (get locate::navigate_and_imu_data :definition-)
      "int32 GPSWeek
float64 GPSTime
float64 Heading_Angle
float64 Latitude
float64 Longitude
float64 Altitude
float64 Speed
int32 Status
int32 Satellite_num
string Warning
float64 UTM_x
float64 UTM_y
")



(provide :locate/navigate_and_imu_data "5fa00f7bd774592428828ebc763abd79")


