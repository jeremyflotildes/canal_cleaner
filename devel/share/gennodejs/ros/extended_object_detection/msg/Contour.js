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

class Contour {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image_points = null;
      this.contourTranslates = null;
    }
    else {
      if (initObj.hasOwnProperty('image_points')) {
        this.image_points = initObj.image_points
      }
      else {
        this.image_points = [];
      }
      if (initObj.hasOwnProperty('contourTranslates')) {
        this.contourTranslates = initObj.contourTranslates
      }
      else {
        this.contourTranslates = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Contour
    // Serialize message field [image_points]
    // Serialize the length for message field [image_points]
    bufferOffset = _serializer.uint32(obj.image_points.length, buffer, bufferOffset);
    obj.image_points.forEach((val) => {
      bufferOffset = ImagePoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [contourTranslates]
    // Serialize the length for message field [contourTranslates]
    bufferOffset = _serializer.uint32(obj.contourTranslates.length, buffer, bufferOffset);
    obj.contourTranslates.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Contour
    let len;
    let data = new Contour(null);
    // Deserialize message field [image_points]
    // Deserialize array length for message field [image_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.image_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.image_points[i] = ImagePoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [contourTranslates]
    // Deserialize array length for message field [contourTranslates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contourTranslates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contourTranslates[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.image_points.length;
    length += 24 * object.contourTranslates.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'extended_object_detection/Contour';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff58bd338df15e277a5ae5e64f7a36f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    extended_object_detection/ImagePoint[] image_points   # points on image
    geometry_msgs/Vector3[] contourTranslates             # translations to contour points
    
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
    const resolved = new Contour(null);
    if (msg.image_points !== undefined) {
      resolved.image_points = new Array(msg.image_points.length);
      for (let i = 0; i < resolved.image_points.length; ++i) {
        resolved.image_points[i] = ImagePoint.Resolve(msg.image_points[i]);
      }
    }
    else {
      resolved.image_points = []
    }

    if (msg.contourTranslates !== undefined) {
      resolved.contourTranslates = new Array(msg.contourTranslates.length);
      for (let i = 0; i < resolved.contourTranslates.length; ++i) {
        resolved.contourTranslates[i] = geometry_msgs.msg.Vector3.Resolve(msg.contourTranslates[i]);
      }
    }
    else {
      resolved.contourTranslates = []
    }

    return resolved;
    }
};

module.exports = Contour;
