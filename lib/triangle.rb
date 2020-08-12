class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene
  attr_reader :sides

  def initialize(l1, l2, l3)
    @sides = [l1, l2, l3]
  end

  def kind


  end

  class TriangleError < StandardError
      # triangle error code
    end

end
