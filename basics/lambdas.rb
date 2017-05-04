### PART I: Lambdas
##

foo = -> {
  "cool\t" + 42.to_s + "!"      # creating a lambda using ->
}
puts foo[]

message = ->(name, age) {
  "#{name}:\t#{age}"            # using arguments
} 
puts message["bar", 22],        # normal call
     message.call("baz", 23),   # call the lambda using .call(params)
     message.("off", 42)        # call the lambda using .(params)

pr = lambda do |one, two, three| # or even using this weird syntax
  sum = 0
  case one
  when Integer, Float then sum += one
  end
  case two
  when Integer, Float then sum += two
  end
  case three
  when Integer, Float then sum += three
  end
  return sum
end
#puts pr[1,2]                  # uncomment to see some errors
puts pr[1,2,3],
     pr.call("str",2,5)

### PART II: Lambda vs Proc
##

def tproc
  foo = Proc.new {
    return                      # returns out of the enclosing scope
  }
  foo.call
  puts "some code\n..."         # this would not be evaluated!
end

def tlambda
  bar = lambda {
    return                      # returns from the lambda
  }
  bar.call
  puts "some other code\n..."   # this one does!
end

puts "calling tproc"
tproc
puts "calling tlambda"
tlambda
