def include?(array, num)
#  if array.count(num) == 1

#  if array.index(num) != nil
#    true
#  else
#    false
#  end

#  array.count(num) > 0 ? true : false
  array.index(num) != nil ? true : false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
