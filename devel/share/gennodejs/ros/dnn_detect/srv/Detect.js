// Auto-generated. Do not edit!

// (in-package dnn_detect.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let DetectedObjectArray = require('../msg/DetectedObjectArray.js');

//-----------------------------------------------------------

class DetectRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectRequest
    let len;
    let data = new DetectRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dnn_detect/DetectRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectRequest(null);
    return resolved;
    }
};

class DetectResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = new DetectedObjectArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectResponse
    // Serialize message field [result]
    bufferOffset = DetectedObjectArray.serialize(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectResponse
    let len;
    let data = new DetectResponse(null);
    // Deserialize message field [result]
    data.result = DetectedObjectArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += DetectedObjectArray.getMessageSize(object.result);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dnn_detect/DetectResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5234e7b88c3a208257806e2aa3d4d67e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    DetectedObjectArray result
    
    
    ================================================================================
    MSG: dnn_detect/DetectedObjectArray
    Header header
    DetectedObject[] objects
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: dnn_detect/DetectedObject
    string class_name
    float32 confidence
    float32 x_min
    float32 x_max
    float32 y_min
    float32 y_max
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectResponse(null);
    if (msg.result !== undefined) {
      resolved.result = DetectedObjectArray.Resolve(msg.result)
    }
    else {
      resolved.result = new DetectedObjectArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: DetectRequest,
  Response: DetectResponse,
  md5sum() { return '5234e7b88c3a208257806e2aa3d4d67e'; },
  datatype() { return 'dnn_detect/Detect'; }
};
