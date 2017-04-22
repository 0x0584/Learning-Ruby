### PART I Arrays
##

# array of strings
str_array = [ "this", "an", "array", "of", "strings" ]
puts str_array

# array of ints
int_array = [1, 5, 6, 4]
puts int_array

# mixed array?
mixed_array = [1, "bar", 2.3, true]
puts mixed_array

### PART II Hashes
##

person = Hash.new               # Hash Class

person["id"] = 10
person["name"] = "foo"

puts person["id"].to_s + " " + person["name"]

#      this is called `symbole`
#           v          v
person = { :id => 10, :name => "bar"  }
puts person[:id].to_s + " " + person[:name]

### PART II Arrays and Hashes
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

