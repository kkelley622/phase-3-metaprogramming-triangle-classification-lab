class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    is_triangle
    if side_1 == side_2 && side_2 == side_3
        :equilateral
      elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
        :isosceles
      else
        :scalene
    end
  
  end

  def valid_triangle
    side_1 > 0 && side_2 > 0 && side_3 > 0
  end

  def triangle_inequality
    side_1 + side_2 > side_3 && side_2 + side_3 > side_1 && side_1 + side_3 > side_2
  end

  def is_triangle
    raise TriangleError unless valid_triangle && triangle_inequality
  end




  class TriangleError < StandardError

  end
end
