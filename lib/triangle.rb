require 'pry'

class Triangle
  attr_accessor :sides

  def initialize(s1, s2, s3)
    temp_sides = [s1, s2, s3]
    @sides = []

    if s1 + s2 > s3 && s1 + s3 > s2 && s2 + s3 > s1
      temp_sides.map do |side|
        if side > 0
          @sides << side
        else
          raise TriangleError
        end
      end
    elsif
      raise TriangleError
    end
  end

  def kind
    case sides.uniq.length
    when 1
      :equilateral
    when 2
      :isosceles
    when 3
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end

# e = Triangle.new(1,1,1)
# i = Triangle.new(1,1,2)
# s = Triangle.new(1,2,3)
