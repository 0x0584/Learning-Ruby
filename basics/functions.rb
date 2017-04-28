### PART I: functions
##

def foo(*args)                  # va_args
  a1, a2, a3 = args
  puts "#{a1} #{a2} #{a3}"
end

foo(1, 2)                       # this way
foo 2, 3 + 7, 5                 # or this way
foo 2                           # even this way

def bar(a, b)                   # two args
  puts "#{a} to the #{b} powers is: #{a ** b}"
end

bar(2,3)                        # this way
bar 2, 2**2                     # or this way

def baz()                       # no args
  puts "no args"
end

baz()                           # this way
baz                             # or this way
#baz 2                           # this would rise an error!

### PART II: functions with return
##

def this_return_one()
  return 1
end

one = this_return_one           # with or without parans
puts one

def this_returns_one_too()
  1
end

another_one = this_returns_one_too() # with or without parans
puts another_one
