#This is good for when you want the child to behave differently than the Parent
class Cat
  def override()
    puts "CAT override()"
  end
end

class Kitten < Cat
  def override()
    puts "KITTEN override()"
  end
end

beans = Cat.new()
scrambles = Kitten.new()

beans.override()
scrambles.override()
