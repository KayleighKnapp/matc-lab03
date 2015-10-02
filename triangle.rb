# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  
  if a <= 0 || b <= 0 || c <= 0
    raise TriangleError, "Triangle sides cannot be nonexistent"
  end
  
  if (a + b) <= c || (a + c) <= b || (b + c) <= a
    raise TriangleError, "Triangle cannot have side lengths that make a mockery of geometry"
  end
  
  if a == b
    if a == c
      return :equilateral
    end
    return :isosceles
  end
  if a == c || b == c
    return :isosceles
  end
  return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end