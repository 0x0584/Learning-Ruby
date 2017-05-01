### PART I Arrays
##

# array of strings
# str_array = "this", "an", "array", "of", "strings"
str_array = [ "this", "an", "array", "of", "strings" ]
puts str_array

# array of ints
int_array = [1, 5, 6, 4]
puts int_array

# special initialization
int_array = Array.new(5){ |i| 2 ** i  }
puts int_array

# mixed array?
mixed_array = [1, "bar", 2.3, true]
puts mixed_array

bool_array = Array.new(4, false)
puts bool_array

# 2d array
two_dim = Array.new(3) {  Array.new(4) { |i| 2**i }}
puts two_dim

# push bool_array into two_dim 
two_dim << bool_array
puts two_dim

some_array = [nil, 2, 4, "true", nil, true]
puts "array"
puts some_array
puts "compact"
# compact return an array with no `nil` elements 
puts some_array.compact
puts "compact!"
# compact! remove all `nil` elements
puts some_array.compact!
puts "array"
puts some_array

### PART II Hashes
##

person = Hash.new               # new Hash-Class instance (empty hash)
#person = {}                     # another way to declare an empty hash

person["id"] = 10
person["name"] = "foo"

puts person["id"].to_s + " " + person["name"]

#      this is called `symbole`
#           v          v
person = { :id => 10, :name => "bar"  }
puts person[:id].to_s + " " + person[:name]

### PART II Collections: Arrays of Hashes
##

# long way 
# people = []                     # init an array
# p1 =  { "id" => 11, "name" => "foo"}
# p2 =  { :id => 23, :name => "bar"}
# people.push(p1)
# people.push(p2)

# short way

people = [
  # mixed
  { "id" => 11, "name" => { first: "foo", last: "bar" } }, # valid since 1.9+
  { :id => 23, :name => "bar"},                            # valid in all version
  { "id": 12, "name": "baz" }                              # valid since 2.2+
]

puts people[0]["id"].to_s + people[0]["name"].to_s
puts people[1][:id].to_s + people[1][:name]

values = Hash.new(0)
values[:foo] = 12

puts values[:foo].to_s + " " + values[:bar].to_s # this should print 0 instead of nil 
