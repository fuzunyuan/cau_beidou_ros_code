// Auto-generated. Do not edit!

// (in-package locate.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class navigate_and_imu_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.GPSWeek = null;
      this.GPSTime = null;
      this.Heading_Angle = null;
      this.Latitude = null;
      this.Longitude = null;
      this.Altitude = null;
      this.Speed = null;
      this.Status = null;
      this.Satellite_num = null;
      this.Warning = null;
      this.UTM_x = null;
      this.UTM_y = null;
    }
    else {
      if (initObj.hasOwnProperty('GPSWeek')) {
        this.GPSWeek = initObj.GPSWeek
      }
      else {
        this.GPSWeek = 0;
      }
      if (initObj.hasOwnProperty('GPSTime')) {
        this.GPSTime = initObj.GPSTime
      }
      else {
        this.GPSTime = 0.0;
      }
      if (initObj.hasOwnProperty('Heading_Angle')) {
        this.Heading_Angle = initObj.Heading_Angle
      }
      else {
        this.Heading_Angle = 0.0;
      }
      if (initObj.hasOwnProperty('Latitude')) {
        this.Latitude = initObj.Latitude
      }
      else {
        this.Latitude = 0.0;
      }
      if (initObj.hasOwnProperty('Longitude')) {
        this.Longitude = initObj.Longitude
      }
      else {
        this.Longitude = 0.0;
      }
      if (initObj.hasOwnProperty('Altitude')) {
        this.Altitude = initObj.Altitude
      }
      else {
        this.Altitude = 0.0;
      }
      if (initObj.hasOwnProperty('Speed')) {
        this.Speed = initObj.Speed
      }
      else {
        this.Speed = 0.0;
      }
      if (initObj.hasOwnProperty('Status')) {
        this.Status = initObj.Status
      }
      else {
        this.Status = 0;
      }
      if (initObj.hasOwnProperty('Satellite_num')) {
        this.Satellite_num = initObj.Satellite_num
      }
      else {
        this.Satellite_num = 0;
      }
      if (initObj.hasOwnProperty('Warning')) {
        this.Warning = initObj.Warning
      }
      else {
        this.Warning = '';
      }
      if (initObj.hasOwnProperty('UTM_x')) {
        this.UTM_x = initObj.UTM_x
      }
      else {
        this.UTM_x = 0.0;
      }
      if (initObj.hasOwnProperty('UTM_y')) {
        this.UTM_y = initObj.UTM_y
      }
      else {
        this.UTM_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type navigate_and_imu_data
    // Serialize message field [GPSWeek]
    bufferOffset = _serializer.int32(obj.GPSWeek, buffer, bufferOffset);
    // Serialize message field [GPSTime]
    bufferOffset = _serializer.float64(obj.GPSTime, buffer, bufferOffset);
    // Serialize message field [Heading_Angle]
    bufferOffset = _serializer.float64(obj.Heading_Angle, buffer, bufferOffset);
    // Serialize message field [Latitude]
    bufferOffset = _serializer.float64(obj.Latitude, buffer, bufferOffset);
    // Serialize message field [Longitude]
    bufferOffset = _serializer.float64(obj.Longitude, buffer, bufferOffset);
    // Serialize message field [Altitude]
    bufferOffset = _serializer.float64(obj.Altitude, buffer, bufferOffset);
    // Serialize message field [Speed]
    bufferOffset = _serializer.float64(obj.Speed, buffer, bufferOffset);
    // Serialize message field [Status]
    bufferOffset = _serializer.int32(obj.Status, buffer, bufferOffset);
    // Serialize message field [Satellite_num]
    bufferOffset = _serializer.int32(obj.Satellite_num, buffer, bufferOffset);
    // Serialize message field [Warning]
    bufferOffset = _serializer.string(obj.Warning, buffer, bufferOffset);
    // Serialize message field [UTM_x]
    bufferOffset = _serializer.float64(obj.UTM_x, buffer, bufferOffset);
    // Serialize message field [UTM_y]
    bufferOffset = _serializer.float64(obj.UTM_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type navigate_and_imu_data
    let len;
    let data = new navigate_and_imu_data(null);
    // Deserialize message field [GPSWeek]
    data.GPSWeek = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [GPSTime]
    data.GPSTime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Heading_Angle]
    data.Heading_Angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Latitude]
    data.Latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Longitude]
    data.Longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Altitude]
    data.Altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Speed]
    data.Speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Status]
    data.Status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Satellite_num]
    data.Satellite_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Warning]
    data.Warning = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [UTM_x]
    data.UTM_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [UTM_y]
    data.UTM_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.Warning);
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'locate/navigate_and_imu_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5fa00f7bd774592428828ebc763abd79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 GPSWeek
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new navigate_and_imu_data(null);
    if (msg.GPSWeek !== undefined) {
      resolved.GPSWeek = msg.GPSWeek;
    }
    else {
      resolved.GPSWeek = 0
    }

    if (msg.GPSTime !== undefined) {
      resolved.GPSTime = msg.GPSTime;
    }
    else {
      resolved.GPSTime = 0.0
    }

    if (msg.Heading_Angle !== undefined) {
      resolved.Heading_Angle = msg.Heading_Angle;
    }
    else {
      resolved.Heading_Angle = 0.0
    }

    if (msg.Latitude !== undefined) {
      resolved.Latitude = msg.Latitude;
    }
    else {
      resolved.Latitude = 0.0
    }

    if (msg.Longitude !== undefined) {
      resolved.Longitude = msg.Longitude;
    }
    else {
      resolved.Longitude = 0.0
    }

    if (msg.Altitude !== undefined) {
      resolved.Altitude = msg.Altitude;
    }
    else {
      resolved.Altitude = 0.0
    }

    if (msg.Speed !== undefined) {
      resolved.Speed = msg.Speed;
    }
    else {
      resolved.Speed = 0.0
    }

    if (msg.Status !== undefined) {
      resolved.Status = msg.Status;
    }
    else {
      resolved.Status = 0
    }

    if (msg.Satellite_num !== undefined) {
      resolved.Satellite_num = msg.Satellite_num;
    }
    else {
      resolved.Satellite_num = 0
    }

    if (msg.Warning !== undefined) {
      resolved.Warning = msg.Warning;
    }
    else {
      resolved.Warning = ''
    }

    if (msg.UTM_x !== undefined) {
      resolved.UTM_x = msg.UTM_x;
    }
    else {
      resolved.UTM_x = 0.0
    }

    if (msg.UTM_y !== undefined) {
      resolved.UTM_y = msg.UTM_y;
    }
    else {
      resolved.UTM_y = 0.0
    }

    return resolved;
    }
};

module.exports = navigate_and_imu_data;
