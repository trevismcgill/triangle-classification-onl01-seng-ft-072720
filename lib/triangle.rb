require "pry"

class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene
  attr_reader :sides


  def initialize(l1, l2, l3)
    @sides = [l1, l2, l3]
  end

def valid_tri?
  @sides[0] + @sides[1] > @sides[2] && @sides.each {|side| side > 0}
end
binding.pry

def kind()
  # binding.pry
  if valid_tri == true && @sides.sum / 3 == @sides[0]
   :equilateral
elsif valid_tri == true && ((@sides[0] == @sides [1]) || (@sides[0] == @sides [2]) || (@sides[1] == @sides [2]))
  :isosceles
elsif valid_tri == true && @sides.uniq == true
  :scalene
end
end
end

class TriangleError < StandardError
      # triangle error code

end
