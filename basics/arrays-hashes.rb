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
puts "hashes"
person = Hash.new               # Hash Class

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
  { "id" => 11, "name" => "foo"},
  { :id => 23, :name => "bar"}
]

puts people[0]["id"].to_s + people[0]["name"]
puts people[1][:id].to_s + people[1][:name]

