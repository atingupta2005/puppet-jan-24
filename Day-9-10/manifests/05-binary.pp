# Binary data type can be used to produce base 64 encoded strings.

# Encode a string as if it was binary
$encodestring = String(Binary('thestring', '%s'))
notice($encodestring)

# Decode a Binary assuming it is an UTF-8 String
$decodestring = String(Binary("dGhlc3RyaW5n"), "%s")
notice($decodestring)


# create the binary content "abc" from base64 encoded string
$a = Binary('YWJj')
notice($a)
