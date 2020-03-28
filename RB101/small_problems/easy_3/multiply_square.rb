def multiply(num, n)
  num * n
end

def square(num)
  multiply(num, num)
end


puts square(5) == 25
puts square(-8) == 64
puts multiply(5, 3) == 15
