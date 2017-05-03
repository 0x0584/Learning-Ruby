### PART I: use of `gets`
##

puts "Enter a number"
# input as string
number = gets.chomp!            # removes only the newline if exists, chomp does the same, but without modifying the original string 
puts number
puts number.class

print  "normal gets ",gets
print  "gets.chop!", gets.chop! # chop! removes the last charcter from the string, chop does the same, but without modifying the original string
puts "Enter a number"
# conversion the input string to int
number = gets.chomp().to_i + 1
puts number
puts number.class
