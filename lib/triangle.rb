require "pry"

class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene
  attr_reader :sides

  def initialize(l1, l2, l3)
    @sides = [l1, l2, l3]
  end

def valid_tri
  if @sides[0] + @sides[1] > @sides[2] &&
    @sides.each {|side| side > 0}
  end
end

def kind
  # binding.pry
  if valid_tri == true && @sides.sum / 3 == @sides[0]
    :equilateral
  end
end

end

class TriangleError < StandardError
      # triangle error code

end
