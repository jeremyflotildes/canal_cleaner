// Auto-generated. Do not edit!

// (in-package extended_object_detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ImagePoint = require('./ImagePoint.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Rect {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_bottom = null;
      this.right_up = null;
      this.cornerTranslates = null;
    }
    else {
      if (initObj.hasOwnProperty('left_bottom')) {
        this.left_bottom = initObj.left_bottom
      }
      else {
        this.left_bottom = new ImagePoint();
      }
      if (initObj.hasOwnProperty('right_up')) {
        this.right_up = initObj.right_up
      }
      else {
        this.right_up = new ImagePoint();
      }
      if (initObj.hasOwnProperty('cornerTranslates')) {
        this.cornerTranslates = initObj.cornerTranslates
      }
      else {
        this.cornerTranslates = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Rect
    // Serialize message field [left_bottom]
    bufferOffset = ImagePoint.serialize(obj.left_bottom, buffer, bufferOffset);
    // Serialize message field [right_up]
    bufferOffset = ImagePoint.serialize(obj.right_up, buffer, bufferOffset);
    // Serialize message field [cornerTranslates]
    // Serialize the length for message field [cornerTranslates]
    bufferOffset = _serializer.uint32(obj.cornerTranslates.length, buffer, bufferOffset);
    obj.cornerTranslates.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Rect
    let len;
    let data = new Rect(null);
    // Deserialize message field [left_bottom]
    data.left_bottom = ImagePoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_up]
    data.right_up = ImagePoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [cornerTranslates]
    // Deserialize array length for message field [cornerTranslates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cornerTranslates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cornerTranslates[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.cornerTranslates.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'extended_object_detection/Rect';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b1bcb70028ba76b66f0308494067e67d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    extended_object_detection/ImagePoint left_bottom
    extended_object_detection/ImagePoint right_up
    geometry_msgs/Vector3[] cornerTranslates    # translate to rect corners, from bottom left in clock-wice direction, if z value is 1, it means that it is unit vector in homogeneous coordnates 
    
    
    ================================================================================
    MSG: extended_object_detection/ImagePoint
    int32 x
    int32 y
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Rect(null);
    if (msg.left_bottom !== undefined) {
      resolved.left_bottom = ImagePoint.Resolve(msg.left_bottom)
    }
    else {
      resolved.left_bottom = new ImagePoint()
    }

    if (msg.right_up !== undefined) {
      resolved.right_up = ImagePoint.Resolve(msg.right_up)
    }
    else {
      resolved.right_up = new ImagePoint()
    }

    if (msg.cornerTranslates !== undefined) {
      resolved.cornerTranslates = new Array(msg.cornerTranslates.length);
      for (let i = 0; i < resolved.cornerTranslates.length; ++i) {
        resolved.cornerTranslates[i] = geometry_msgs.msg.Vector3.Resolve(msg.cornerTranslates[i]);
      }
    }
    else {
      resolved.cornerTranslates = []
    }

    return resolved;
    }
};

module.exports = Rect;
