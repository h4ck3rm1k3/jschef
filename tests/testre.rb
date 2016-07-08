
X=/[\u0000-\u007F]|[\u0080-\u00BF][\u00C0-\u00F0]*|[\u00C0-\u00F0]/


#VALID_XML_CHARS = /^(?:
VALID_XML_CHARS1 = /[\x09\x0A\x0D\x20-\x7E]/            # ASCII
b=/\u00DF/
a=/\u00C2/
print a,b
VALID_XML_CHARS2a = /[\u00C2-\u00DF]/;             # non-overlong 2-byte
VALID_XML_CHARS2b = /[\u0080-\u00BF]/;             # non-overlong 2-byte
VALID_XML_CHARS2 = /[\u00C2-\u00DF][\u0080-\u00BF]/;             # non-overlong 2-byte
VALID_XML_CHARS3 = /\u00E0[\u00A0-\u00BF][\u0080-\u00BF]/;        # excluding overlongs
VALID_XML_CHARS4 = /[\u00E1-\u00EC\u00EE][\u0080-\u00BF]{2}/;      # straight 3-byte
VALID_XML_CHARS5 = /\u00EF[\u0080-\u00BE]{2}/;                #
VALID_XML_CHARS6 = /\u00EF\u00BF[\u0080-\u00BD]/;               # excluding U+fffe and U+ffff
VALID_XML_CHARS7 = /\u00ED[\u0080-\u009F][\u0080-\u00BF]/;        # excluding surrogates
VALID_XML_CHARS8 = /\u00F0[\u0090-\u00BF][\u0080-\u00BF]{2}/;     # planes 1-3
VALID_XML_CHARS9 = /[\u00F1-\u00F3][\u0080-\u00BF]{3}/;          # planes 4-15
VALID_XML_CHARS0 = /\u00F4[\u0080-\u008F][\u0080-\u00BF]{2}/;     # plane 16



#/^(?:[\x09\x0A\x0D\x20-\x7E]|[\u00C2-\u00DF][\x80-\xBF]|\xE0[\xA0-\xBF][\x80-\xBF]|[\xE1-\xEC\xEE][\x80-\xBF]{2}|\xEF[\x80-\xBE]{2}|\xEF\xBF[\x80-\xBD]|\xED[\x80-\x9F][\x80-\xBF]|\xF0[\x90-\xBF][\x80-\xBF]{2}|[\xF1-\xF3][\x80-\xBF]{3}|\xF4[\x80-\x8F][\x80-\xBF]{2})*$/xn;
#/^(?:[\x09\x0A\x0D\x20-\x7E]|[\u00C2-\u00DF][\u0080-\u00BF]|\u00E0[\u00A0-\u00BF][\u0080-\u00BF]|[\u00E1-\u00EC\u00EE][\u0080-\u00BF]{2}|\u00EF[\u0080-\u00BE]{2}|\u00EF\u00BF[\u0080-\u00BD]|\u00ED[\u0080-\u009F][\u0080-\u00BF]|\u00F0[\u0090-\u00BF][\u0080-\u00BF]{2}|[\u00F1-\u00F3][\u0080-\u00BF]{3}|\u00F4[\u0080-\u008F][\u0080-\u00BF]{2})*$/x;
