### PART I Blocks
##

i = 0
count = 5

# similar to for-loop
count.times do
  puts (i += 1).to_s
end

array = [
  "foo", "bar",
  "cool", "look"
]

# loop based on the array's count
array.each do |foo|
  puts foo
end

array = [1, 2, 3, 4]

array.collect! do |n|
  n ** 2
end

puts array.inspect

array = [1, 2, 3, 4]

1.upto(array.length - 1) do |x|
  puts array[x].to_s
end
