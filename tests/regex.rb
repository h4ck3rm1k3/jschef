

VALID_CHAR = [
      0x9, 0xA, 0xD,
      (0x20..0xD7FF),
      (0xE000..0xFFFD),
      (0x10000..0x10FFFF)
]

VALID_XML_CHARS = Regexp.new('^['+
                             VALID_CHAR.map { |item|
                               case item
                               when Fixnum
                                 [item].pack('U').force_encoding('utf-8')
                               when Range
                                 [item.first, '-'.ord, item.last].pack('UUU').force_encoding('utf-8')
                               end
                             }.join +
                             ']*$')
