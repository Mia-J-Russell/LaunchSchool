def multiply(num, n)
  num * n
end

def square(num)
  multiply(num, num)
end

#Further exploration
#I would NEVER get this answer, I had to write it on paper
#after copying someone elses code
def power_to_the_n(num, power)
  if power == 0
    1
  else
    return multiply(num, power_to_the_n(num, power - 1))
  end
end

puts power_to_the_n(5, 3)
puts power_to_the_n(6, 5)
puts power_to_the_n(2, 3)
# puts square(5) == 25
# puts square(-8) == 64
# puts multiply(5, 3) == 15
