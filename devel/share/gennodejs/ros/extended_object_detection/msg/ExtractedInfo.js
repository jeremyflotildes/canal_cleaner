// Auto-generated. Do not edit!

// (in-package extended_object_detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ExtractedInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.keys = null;
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('keys')) {
        this.keys = initObj.keys
      }
      else {
        this.keys = [];
      }
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExtractedInfo
    // Serialize message field [keys]
    bufferOffset = _arraySerializer.string(obj.keys, buffer, bufferOffset, null);
    // Serialize message field [values]
    bufferOffset = _arraySerializer.string(obj.values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExtractedInfo
    let len;
    let data = new ExtractedInfo(null);
    // Deserialize message field [keys]
    data.keys = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [values]
    data.values = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.keys.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.values.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'extended_object_detection/ExtractedInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8dcfc845da12061fdc33c889527f840c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] keys
    string[] values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExtractedInfo(null);
    if (msg.keys !== undefined) {
      resolved.keys = msg.keys;
    }
    else {
      resolved.keys = []
    }

    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = []
    }

    return resolved;
    }
};

module.exports = ExtractedInfo;
