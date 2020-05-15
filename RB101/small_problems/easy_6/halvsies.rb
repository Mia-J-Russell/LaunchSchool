# def halvsies(array)
#   halfway = (array.length / 2.0).ceil
#   first_half = array.slice(0, halfway)
#   second_half = array.slice(halfway, (array.size - halfway))
#   [first_half, second_half]
# end

def halvsies(arr)
  halfway = ( arr.length / 2.0 ).round
  first, last = arr.slice!(0, halfway), arr

  [first, last]
end

puts halvsies([1, 5, 2, 4, 3])
puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
