def sum(numbers)
  num = numbers.to_s.split('')
  sum = 0
  for n in num
    sum = n.to_i + sum
  end
  sum
end

puts sum(23)
puts sum(496)
puts sum(123_456_789)
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
