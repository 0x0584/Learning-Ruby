### PART I: Modules
##

module Vehicle
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

c = Car.new

puts c.brand("foo").to_s + " " + c.wheels.to_s
