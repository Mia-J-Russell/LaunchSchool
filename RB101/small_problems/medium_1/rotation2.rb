def rotate_array(arr)
  array = []
  arr.each do |x|
    array << x
  end
  array << array.shift
end

def rotate_rightmost_digits(numbers, time)
  numarray = numbers.to_s.split('')
  numarray[-time..-1] = rotate_array(numarray[-time..-1])
  numarray.join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
