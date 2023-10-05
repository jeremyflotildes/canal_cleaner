// Auto-generated. Do not edit!

// (in-package extended_object_detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ExtractedInfo = require('./ExtractedInfo.js');
let Rect = require('./Rect.js');
let Contour = require('./Contour.js');
let Track = require('./Track.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SimpleObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type_id = null;
      this.type_name = null;
      this.score = null;
      this.extracted_info = null;
      this.transform = null;
      this.rect = null;
      this.contour = null;
      this.track = null;
    }
    else {
      if (initObj.hasOwnProperty('type_id')) {
        this.type_id = initObj.type_id
      }
      else {
        this.type_id = 0;
      }
      if (initObj.hasOwnProperty('type_name')) {
        this.type_name = initObj.type_name
      }
      else {
        this.type_name = '';
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('extracted_info')) {
        this.extracted_info = initObj.extracted_info
      }
      else {
        this.extracted_info = new ExtractedInfo();
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('rect')) {
        this.rect = initObj.rect
      }
      else {
        this.rect = new Rect();
      }
      if (initObj.hasOwnProperty('contour')) {
        this.contour = initObj.contour
      }
      else {
        this.contour = new Contour();
      }
      if (initObj.hasOwnProperty('track')) {
        this.track = initObj.track
      }
      else {
        this.track = new Track();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimpleObject
    // Serialize message field [type_id]
    bufferOffset = _serializer.int32(obj.type_id, buffer, bufferOffset);
    // Serialize message field [type_name]
    bufferOffset = _serializer.string(obj.type_name, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float64(obj.score, buffer, bufferOffset);
    // Serialize message field [extracted_info]
    bufferOffset = ExtractedInfo.serialize(obj.extracted_info, buffer, bufferOffset);
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [rect]
    bufferOffset = Rect.serialize(obj.rect, buffer, bufferOffset);
    // Serialize message field [contour]
    bufferOffset = Contour.serialize(obj.contour, buffer, bufferOffset);
    // Serialize message field [track]
    bufferOffset = Track.serialize(obj.track, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimpleObject
    let len;
    let data = new SimpleObject(null);
    // Deserialize message field [type_id]
    data.type_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [type_name]
    data.type_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [extracted_info]
    data.extracted_info = ExtractedInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [rect]
    data.rect = Rect.deserialize(buffer, bufferOffset);
    // Deserialize message field [contour]
    data.contour = Contour.deserialize(buffer, bufferOffset);
    // Deserialize message field [track]
    data.track = Track.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type_name);
    length += ExtractedInfo.getMessageSize(object.extracted_info);
    length += Rect.getMessageSize(object.rect);
    length += Contour.getMessageSize(object.contour);
    return length + 77;
  }

  static datatype() {
    // Returns string type for a message object
    return 'extended_object_detection/SimpleObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9449a3577a116da7e855701d3277a6b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # object info
    int32 type_id                               # id of type, corresponded to object base
    string type_name                            # name of type, corresponded to object base
    float64 score                               # confidence coefficient of current result
    extended_object_detection/ExtractedInfo extracted_info
    
    # object position and geometry
    geometry_msgs/Transform transform           # transform to object center
    extended_object_detection/Rect rect         # object frames on image and 3d coordinates
    extended_object_detection/Contour contour   # contour image and 3d info
    
    # tracking
    extended_object_detection/Track track       # information about tracking if it is enabled
    
    
    
    
    
    ================================================================================
    MSG: extended_object_detection/ExtractedInfo
    string[] keys
    string[] values
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
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
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: extended_object_detection/Rect
    extended_object_detection/ImagePoint left_bottom
    extended_object_detection/ImagePoint right_up
    geometry_msgs/Vector3[] cornerTranslates    # translate to rect corners, from bottom left in clock-wice direction, if z value is 1, it means that it is unit vector in homogeneous coordnates 
    
    
    ================================================================================
    MSG: extended_object_detection/ImagePoint
    int32 x
    int32 y
    
    ================================================================================
    MSG: extended_object_detection/Contour
    extended_object_detection/ImagePoint[] image_points   # points on image
    geometry_msgs/Vector3[] contourTranslates             # translations to contour points
    
    ================================================================================
    MSG: extended_object_detection/Track
    uint8 DETECTED = 1  # Current result is obtained by detector
    uint8 TRACKED = 2  # Current result is obtained by opencv tracker
    uint8 LOST = 3      # Failed to obtain result, this is last saved
    
    int32 id            # track unique id (in group of one object)
    uint8 status        # status described above
    #extended_object_detection/ImagePoint[] image_point_history
    #geometry_msgs/Transform[] transform_history
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimpleObject(null);
    if (msg.type_id !== undefined) {
      resolved.type_id = msg.type_id;
    }
    else {
      resolved.type_id = 0
    }

    if (msg.type_name !== undefined) {
      resolved.type_name = msg.type_name;
    }
    else {
      resolved.type_name = ''
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.extracted_info !== undefined) {
      resolved.extracted_info = ExtractedInfo.Resolve(msg.extracted_info)
    }
    else {
      resolved.extracted_info = new ExtractedInfo()
    }

    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Transform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Transform()
    }

    if (msg.rect !== undefined) {
      resolved.rect = Rect.Resolve(msg.rect)
    }
    else {
      resolved.rect = new Rect()
    }

    if (msg.contour !== undefined) {
      resolved.contour = Contour.Resolve(msg.contour)
    }
    else {
      resolved.contour = new Contour()
    }

    if (msg.track !== undefined) {
      resolved.track = Track.Resolve(msg.track)
    }
    else {
      resolved.track = new Track()
    }

    return resolved;
    }
};

module.exports = SimpleObject;
