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

### PART II: Classes
##

class Car
  include Vehicle
  @name = ""
  @number = ""
  @id = ""
  def initialize (name, number, id = '00')
    @name = name
    @number = number
    @id = id
  end
  def set(value)
    @name = value
  end
  def get
    @name
  end
  # or simply
  def name= name
    @name = name
  end
end

## TESTING

c = Car.new
puts c.brand("foo").to_s + " " + c.wheels.to_s
c.set("carr")
puts c.get
c.initialize("foo", 10)
