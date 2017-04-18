### PART I - Formatted printing
##
## TODO: search for all ruby string formatting
##

aa = 10
bb = 45
cc = "clear"

puts "%s #{bb}" % cc
puts "%s %s %p %d" % [aa + bb, cc, aa, bb + aa]

### PART II - Using `print` instead of puts

print "test\n #{aa}\t\n"

print "bb" && "cc"
print "bb" || "cc"
left = "string"
right = "string"

print left + right
