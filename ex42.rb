#Animal is-a object look at the extra credit
class Animal
  def pet_action(action = nil)
    puts "#{action}"
  end
end

##is-a object
class Dog < Animal

  def initialize(name)
    ##has-a
    @name = name
  end

  def pet_action()
    super("bork, paw")#<<this will take bork, paw as parameter for pet_action
  end
end

##is-a
class Cat < Animal

  def initialize(name)
    ##has-a
    @name = name
  end

  def pet_action()
    super("meow, claw")
  end

end

##is-a
class Person

  def initialize(name)
    ##has-a
    @name = name

    #person has-a pet of some kind
    @pet = nil

  @hobbies = []

  @favorite_foods = {}
end

  attr_accessor :pet, :hobbies, :favorite_foods

def describe()
  puts "His name is #{@name}"
  puts "#{@name}'s hobbies include:"
    @hobbies.each {|hobby| puts hobby}

  puts "#{@name}'s favorite foods and how they are made:"
    @favorite_foods.each { |foods, value| puts "#{foods}: #{value}"}
  end
end


##is-a
class Employee < Person

  def initialize(name, salary)
    ## is-a -- hmm what is this strange magic?
    super(name)
    ##has-a
    @salary = salary
  end

end

##is-a
class Fish
end

##is-a
class Salmon < Fish
end

##is-a
class Halibut < Fish
end


#rover is-a Dog
rover = Dog.new("Rover")

##is-a
satan = Cat.new("Satan")

##is-a
jake = Person.new("Jake")

##Jake has-a pet satan
jake.pet = satan

jake.hobbies = ['playing games', 'eating', 'sleeping']

jake.favorite_foods = {'steak' => 'medium rare', 'burgers' => 'medium rare',
  'eggs' => 'sunny side-up', 'bacon' => 'crispy' }

##Frank has-a Employee
frank = Employee.new("Frank", 120000)

##Frank has-a pet Rover
frank.pet = rover

##Flipper is-a fish
flipper = Fish.new()

##Crouse is-a Salmon
crouse = Salmon.new()

##Harry is-a Halibut
harry = Halibut.new()

jake.describe()
