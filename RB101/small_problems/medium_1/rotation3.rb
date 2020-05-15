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

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

# def max_rotation(numbers)
#   numarray = numbers.to_s.split('')
#   arr = []
#   arr = rotate_array(numarray).join.to_i
#   counter = 1
#
#   while counter < numarray.size - 1
#     arr = rotate_rightmost_digits(arr, -counter)
#     counter += 1
#   end
#   arr
# end

puts max_rotation(105)
puts max_rotation(735291)
puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
