### PART I: Modules
##

module Vehicle                  # or this: Vehicle = Module.new do
  # methodes
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
  # instace variables
  @name = ""
  @age = 0
  @job = "NONE"

  # class variables
  @@type = "Person"

  # constructor
  def initialize(n, a, j = "NONE")
    @name = n
    @age = a
    @job = j
  end

  # set
  def name= name
    @name = name
  end
  def age= age
    @age = age
  end
  def job= job
    @job = job
  end

  # get
  def name
    @name
  end
  def age
    @age
  end
  def job
    @job
  end

  # methodes
  def to_str
    "I'm #{@name}, my age is #{@age}, my current job is #{@job}"
  end
end

## TESTING

p = Person.new "foo", 20

puts p.to_str + p.type.to_s

### PART III: Inheritance
##

class Animal
  attr_accessor :name           # new way to define get/set
  
  def move
    puts "#{name} is moving.."
  end
  def speed
    10
  end
end

class Bird < Animal
  def fly
    puts "#{name} can fly too.."
  end
  def speed
    super() * 2
  end
end

## TESTING

a = Animal.new
a.name= "animal"
a.move

b = Bird.new
b.name= "bird"
b.move
b.fly
