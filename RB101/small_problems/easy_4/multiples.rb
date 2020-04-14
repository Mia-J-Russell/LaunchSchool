def multisum(num)
  sum = 0
  counter = 0
  while counter <= num
    sum += counter if (counter % 3 == 0) || (counter % 5 == 0)
    counter += 1
  end
  sum
end

#Further exploration
def inject(num)
  multiarray = []

  (1..num).each do |n|
    if (n % 3 == 0) || (n % 5 == 0)
      multiarray << n
    end
  end

  multiarray.inject(:+)
end

# puts multisum(10)
# puts multisum(3) == 3
# puts multisum(5) == 8
# puts multisum(10) == 33
# puts multisum(1000) == 234168

puts inject(3)
puts inject(5)
puts inject(10)
puts inject(1000)
