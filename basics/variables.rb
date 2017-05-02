### PART I - Declartion, manipulation
##

# Declaration
cool = 8
pure = 2
pp = "foo"
ff = "coco"
$global = -1                    # global variables
x, y, z = 0, 1.0, "2"           # parallel assignment

# WHY: using cool = 8, pure = 2, pp = "look" is not
# the same as the one below!!
# This might be the syntax to declare an Array!!

# Manipulation
test = cool * pure
test /= cool
pure *= cool
test -= (2/78.0)
test = pure << cool

# remember:
# objects separated by ',' has the same 
# stand-alone execution of the function (i.e. puts)

puts "cool: #{cool} pure: #{pure} pp: #{pp}"
puts cool, test, "ff:#{ff}"
puts cool, test; # terminating lines with the classic ';' is fine! YAY!!
puts pp + ", is just name"
puts cool * pure
puts (cool / pure) && (true)
puts x, y, z

