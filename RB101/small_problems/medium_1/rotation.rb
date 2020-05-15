def rotate_array(arr)
  array = []
  arr.each do |x|
    array << x
  end
  array << array.shift
end

# puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# puts rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# puts rotate_array(x) == [2, 3, 4, 1]
# puts x == [1, 2, 3, 4]

#Further Exploration
def rotate_string(string)
  array = string.split('')
  array = rotate_array(array)
  array.join
end

# puts rotate_string('Hello')
# puts rotate_string('Switch me around')

# y = "This is a string"
# puts rotate_string(y)
# puts y

def rotate_integer(num)
  string = num.to_s
  string = rotate_string(string)
  string.to_i
end

puts rotate_integer(123)
puts rotate_integer(1291830)

z = 12938019283081
puts rotate_integer(z)
puts z
