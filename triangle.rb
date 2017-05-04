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
  [a,b,c].permutation { |p|
      if p[0] + p[1] <= p[2]
        raise TriangleError, "Two sides of a triangle must be greater than the remaining side."
      elsif p.count { |x| x <= 0} > 0
        raise TriangleError, "A triangle cannot have sides of zero or less length."
      end
   }

   if [a,b,c].uniq.count == 1
     return :equilateral
   elsif [a,b,c].uniq.count == 2
     return :isosceles
   elsif [a,b,c].uniq.count == 3
     return :scalene
   end


end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
