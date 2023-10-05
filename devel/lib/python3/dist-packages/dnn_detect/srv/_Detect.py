# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dnn_detect/DetectRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class DetectRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "dnn_detect/DetectRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DetectRequest, self).__init__(*args, **kwds)

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dnn_detect/DetectResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dnn_detect.msg
import std_msgs.msg

class DetectResponse(genpy.Message):
  _md5sum = "5234e7b88c3a208257806e2aa3d4d67e"
  _type = "dnn_detect/DetectResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """DetectedObjectArray result


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
"""
  __slots__ = ['result']
  _slot_types = ['dnn_detect/DetectedObjectArray']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DetectResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = dnn_detect.msg.DetectedObjectArray()
    else:
      self.result = dnn_detect.msg.DetectedObjectArray()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.result.header.seq, _x.result.header.stamp.secs, _x.result.header.stamp.nsecs))
      _x = self.result.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.result.objects)
      buff.write(_struct_I.pack(length))
      for val1 in self.result.objects:
        _x = val1.class_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_5f().pack(_x.confidence, _x.x_min, _x.x_max, _x.y_min, _x.y_max))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.result is None:
        self.result = dnn_detect.msg.DetectedObjectArray()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.result.header.seq, _x.result.header.stamp.secs, _x.result.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.result.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.result.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.result.objects = []
      for i in range(0, length):
        val1 = dnn_detect.msg.DetectedObject()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.class_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.class_name = str[start:end]
        _x = val1
        start = end
        end += 20
        (_x.confidence, _x.x_min, _x.x_max, _x.y_min, _x.y_max,) = _get_struct_5f().unpack(str[start:end])
        self.result.objects.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.result.header.seq, _x.result.header.stamp.secs, _x.result.header.stamp.nsecs))
      _x = self.result.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.result.objects)
      buff.write(_struct_I.pack(length))
      for val1 in self.result.objects:
        _x = val1.class_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_5f().pack(_x.confidence, _x.x_min, _x.x_max, _x.y_min, _x.y_max))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.result is None:
        self.result = dnn_detect.msg.DetectedObjectArray()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.result.header.seq, _x.result.header.stamp.secs, _x.result.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.result.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.result.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.result.objects = []
      for i in range(0, length):
        val1 = dnn_detect.msg.DetectedObject()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.class_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.class_name = str[start:end]
        _x = val1
        start = end
        end += 20
        (_x.confidence, _x.x_min, _x.x_max, _x.y_min, _x.y_max,) = _get_struct_5f().unpack(str[start:end])
        self.result.objects.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_5f = None
def _get_struct_5f():
    global _struct_5f
    if _struct_5f is None:
        _struct_5f = struct.Struct("<5f")
    return _struct_5f
class Detect(object):
  _type          = 'dnn_detect/Detect'
  _md5sum = '5234e7b88c3a208257806e2aa3d4d67e'
  _request_class  = DetectRequest
  _response_class = DetectResponse
