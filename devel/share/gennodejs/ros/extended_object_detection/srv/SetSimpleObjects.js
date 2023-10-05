// Auto-generated. Do not edit!

// (in-package extended_object_detection.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetSimpleObjectsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.changes = null;
      this.remove_all = null;
      this.add_all = null;
    }
    else {
      if (initObj.hasOwnProperty('changes')) {
        this.changes = initObj.changes
      }
      else {
        this.changes = [];
      }
      if (initObj.hasOwnProperty('remove_all')) {
        this.remove_all = initObj.remove_all
      }
      else {
        this.remove_all = false;
      }
      if (initObj.hasOwnProperty('add_all')) {
        this.add_all = initObj.add_all
      }
      else {
        this.add_all = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetSimpleObjectsRequest
    // Serialize message field [changes]
    bufferOffset = _arraySerializer.int64(obj.changes, buffer, bufferOffset, null);
    // Serialize message field [remove_all]
    bufferOffset = _serializer.bool(obj.remove_all, buffer, bufferOffset);
    // Serialize message field [add_all]
    bufferOffset = _serializer.bool(obj.add_all, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetSimpleObjectsRequest
    let len;
    let data = new SetSimpleObjectsRequest(null);
    // Deserialize message field [changes]
    data.changes = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [remove_all]
    data.remove_all = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [add_all]
    data.add_all = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.changes.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'extended_object_detection/SetSimpleObjectsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58d90aa277946aa2923de4e9d2804806';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Asks to remove or add objects to detection queue by its ID's
    
    # List of changes, contains objects ID
    # For remove object from detection queue add its id with negative sign
    # To add object to detection queue add its id
    int64[] changes
    
    # if true removes all objects (node detects nothing)
    bool remove_all
    
    # if true includes all objects from base to detection queue 
    bool add_all
    
    # if both remove_all and add_all are true, does nothing
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetSimpleObjectsRequest(null);
    if (msg.changes !== undefined) {
      resolved.changes = msg.changes;
    }
    else {
      resolved.changes = []
    }

    if (msg.remove_all !== undefined) {
      resolved.remove_all = msg.remove_all;
    }
    else {
      resolved.remove_all = false
    }

    if (msg.add_all !== undefined) {
      resolved.add_all = msg.add_all;
    }
    else {
      resolved.add_all = false
    }

    return resolved;
    }
};

class SetSimpleObjectsResponse {
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
        this.result = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetSimpleObjectsResponse
    // Serialize message field [result]
    bufferOffset = _arraySerializer.int64(obj.result, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetSimpleObjectsResponse
    let len;
    let data = new SetSimpleObjectsResponse(null);
    // Deserialize message field [result]
    data.result = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.result.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'extended_object_detection/SetSimpleObjectsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67cdd51ca1859f10c723484b0bc5b1b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # List of objects in detection queue after changes
    int64[] result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetSimpleObjectsResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SetSimpleObjectsRequest,
  Response: SetSimpleObjectsResponse,
  md5sum() { return '7e842254cbe0d0dd775c05000053aba0'; },
  datatype() { return 'extended_object_detection/SetSimpleObjects'; }
};
