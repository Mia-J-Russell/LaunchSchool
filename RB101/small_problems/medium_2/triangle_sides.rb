def triangle(side1, side2, side3)
  return :invalid if side1 == 0 || side2 == 0 || side3 == 0
  sum1 = side1 + side2
  sum2 = side1 + side3
  sum3 = side2 + side3
  return :invalid if sum1 < side1 && sum1 < side2 && sum1 < side3
  return :invalid if sum2 < side1 && sum2 < side2 && sum2 < side3
  return :invalid if sum3 < side1 && sum3 < side2 && sum3 < side3

  if side1 == side2 && side1 == side3 && side2 == side3
    return :equilateral
  elsif side1 == side2 || side2 == side3
    return :isosceles
  else
    return :scalene
  end
end

puts triangle(3, 1, 1)
puts triangle(0, 3, 3)
puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
