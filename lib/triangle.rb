class Triangle
  attr_reader :sides
  @sides= []

  def initialize(a,b,c)
    @sides = [a,b,c].sort
  end

  def kind
    if @sides[0] + @sides[1] <= @sides[2]
      raise TriangleError, 'Not a valid triangle.'

      #triangle_inequality check also rules out negative/zero side lengths
    else
      case sides.uniq.length
      when 1
        :equilateral
      when 2
        :isosceles
      when 3
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end

end

# t1 = Triangle.new(1,2,3)
# p t1.sides
# p t1.kind

# t2 = Triangle.new(2,2,3)
# p t2.kind

# t3 = Triangle.new(3,3,3)
# p t3.kind

# t4 = Triangle.new(3,4,5)
# p t4.kind