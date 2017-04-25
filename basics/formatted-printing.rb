### PART I: formatted printing using variables
##

format = "%s %s %s %s"

puts format % ["A", "C", "A", "B"]
puts format % [format, format, format, format]

### PART II: escape characters
##

name = "foo\tbar\n"

print name

cool = <<NAME
this\t is a piece\n of text
NAME

puts cool
