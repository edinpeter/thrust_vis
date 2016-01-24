"""autogenerated by genpy from imu_msg/pointMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class pointMsg(genpy.Message):
  _md5sum = "ee65d36311fdfaf03b60b9402901b990"
  _type = "imu_msg/pointMsg"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 xCoor
int32 yCoor
int32 radius
"""
  __slots__ = ['xCoor','yCoor','radius']
  _slot_types = ['int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       xCoor,yCoor,radius

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(pointMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.xCoor is None:
        self.xCoor = 0
      if self.yCoor is None:
        self.yCoor = 0
      if self.radius is None:
        self.radius = 0
    else:
      self.xCoor = 0
      self.yCoor = 0
      self.radius = 0

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
      buff.write(_struct_3i.pack(_x.xCoor, _x.yCoor, _x.radius))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 12
      (_x.xCoor, _x.yCoor, _x.radius,) = _struct_3i.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3i.pack(_x.xCoor, _x.yCoor, _x.radius))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 12
      (_x.xCoor, _x.yCoor, _x.radius,) = _struct_3i.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3i = struct.Struct("<3i")
