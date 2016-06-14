class Dog
  def initialize(name, animal_sound="woof")
    @name = name
    # this is an instance variable. it only exists
    # inside a particular instance of a dog class
    @animal_sound = animal_sound
  end

  def speak
    # this is a local variable. it only exists
    # inside this speak method
    animal_sound = "bark"

    puts "most dogs say #{ animal_sound }"
    puts "#{ @name } says #{ @animal_sound }"
  end
end

def speak
  animal_sound = "meow"
end

# this variable is in the execution scope,
# but notice it's not inside a class
animal_sound = "hello"

puts "humans say #{animal_sound}"

bulldog = Dog.new("bulldog")
bulldog.speak

poodle = Dog.new("poodle", "le arf")
poodle.speak
