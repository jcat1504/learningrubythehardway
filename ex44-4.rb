class OtherCat

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Kitten

  def initialize()
    @other = OtherCat.new()
  end

  def implicit()
    @other.implicit()
  end

  def override()
    puts "Kitten override()"
  end

  def altered()
    puts "Kitten, BEFORE OTHERCat altered()"
    @other.altered()
    puts "Kitten, AFTER OTHERCat altered()"
  end
end

son = Kitten.new()
other = OtherCat.new()

son.implicit()
son.override()
son.altered()

other.implicit()
