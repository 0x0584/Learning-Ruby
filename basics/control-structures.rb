### PART I: case
##

puts "true" if (1..5) === 2     # the relationship operator

foo = 1123
case foo                        # case internally uses `===`
when 1, 2..5, 1123; puts "nice"
when 42; puts "not nice"
end

foo = "this is a test"
case foo
when "this"                     # literary string
  puts "nice"
when /is/                       # regexp
  puts "include is"
end
