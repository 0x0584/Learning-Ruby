### Part I: Parameters
##

script_name = $0;
name, age, university = ARGV

print "(#{script_name})\nHello #{name}!\n"
print "You're #{age} and you went to #{university} someday\n"

### Part II: Combine Parameters and gets.chomp()
##

username = ARGV.first

print "\nenter x\n"
print "(#{username} $0) > "
x = STDIN.gets.chomp().to_i

print "enter y\n"
print "(#{username} $0) > "
y = STDIN.gets.chomp().to_i

print "#{x} rised to the #{y}-th power is #{x*y}\n"


