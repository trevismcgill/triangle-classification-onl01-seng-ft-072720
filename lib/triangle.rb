class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(l1, l2, l3)
    @side1 = l1
    @side2 = l2
    @side3 = l3
  end

  def kind

  end

  class TriangleError < StandardError
      # triangle error code
    end

end
