require "pry"

class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene
  attr_reader :sides


  def initialize(l1, l2, l3)
    @sides = [l1, l2, l3]
    # binding.pry
  end

def valid_tri?
  @sides[0] + @sides[1] > @sides[2] && @sides.all? {|side| side > 0}
  # binding.pry
end


def kind()
  # binding.pry
  if valid_tri? != true
    raise TriangleError
  else
    if valid_tri? == true && ((@sides[0] == @sides[1]) && (@sides[0] == @sides[2]))
      :equilateral
    elsif valid_tri? == true && ((@sides[0] == @sides [1]) || (@sides[0] == @sides [2]) || (@sides[1] == @sides [2]))
      :isosceles
    elsif valid_tri? == true && @sides.uniq == true
      :scalene
    end
  end
end

end

class TriangleError < StandardError
      # triangle error code

end
