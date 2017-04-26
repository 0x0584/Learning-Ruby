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

### PART II: another way using symboles
## RUBY_VERSION: ruby 2.3.3p222 [x86_64-linux]

format = "%{one} %{two} %{three}%{four}"

# This Works fine
puts format % {
  one:"cool",
  two:"nice",
  three:"I Just ",
  four:"learned this one!"
}

# This does not work at all
puts format % {
  one:"cool",
  two:"nice",
  four:"learned this one!"
}

