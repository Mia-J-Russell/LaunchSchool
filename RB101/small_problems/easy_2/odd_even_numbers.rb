# counter = 99
#
# while counter > 0
#   puts counter if counter % 2 == 1
#   counter -= 1
# end
#
# counter = 99
#
# while counter > 0
#   puts counter if counter % 2 == 0
#   counter -= 1
# end

#Further exploration
array = (1..99).to_a

odd = array.select do |x|
  x.odd?
end

puts odd

even = array.select do |x|
  x.even?
end

puts even
