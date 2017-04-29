### PART I: Modules
##

module Vehicle                  # or this: Vehicle = Module.new do
  def wheels
    4
  end
  def brand(s)
    s
  end
end

class Car
  include Vehicle
end

## TESTING

c = Car.new
puts c.brand("foo")

### PART II: Classes
##

class Person
  @name = ""
  @age = 0
  @job = "NONE"

  def initialize(n, a, j = "NONE")
    @name = n
    @age = a
    @job = j
  end

  def name= name
    @name = name
  end
  def age= age
    @age = age
  end
  def job= job
    @job = job
  end
  def to_str
    "I'm #{@name}, my age is #{@age}, my current job is #{@job}"
  end
end

## TESTING

p = Person.new "foo", 20

puts p.to_str
