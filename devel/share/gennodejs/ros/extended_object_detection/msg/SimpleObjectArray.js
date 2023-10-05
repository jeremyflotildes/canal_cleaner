// Auto-generated. Do not edit!

// (in-package extended_object_detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SimpleObject = require('./SimpleObject.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SimpleObjectArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.objects = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimpleObjectArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = SimpleObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimpleObjectArray
    let len;
    let data = new SimpleObjectArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = SimpleObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.objects.forEach((val) => {
      length += SimpleObject.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'extended_object_detection/SimpleObjectArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '501c555349db7aa5f35344aba1d00534';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    extended_object_detection/SimpleObject[] objects
    
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
    MSG: extended_object_detection/SimpleObject
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
    const resolved = new SimpleObjectArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = SimpleObject.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    return resolved;
    }
};

module.exports = SimpleObjectArray;
