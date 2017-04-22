### PART I: use of `gets`
##

puts "Enter a number"
# input as string
number = gets.chomp()
puts number
puts number.class

puts "Enter a number"
# conversion the input string to int
number = gets.chomp().to_i + 1
puts number
puts number.class



