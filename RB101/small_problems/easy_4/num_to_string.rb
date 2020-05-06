def integer_to_string(num)
  array = num.digits
  newarr = []

  array.each do |x|
    if x == 0
      newarr << '0'
    elsif x == 1
      newarr << '1'
    elsif x == 2
      newarr << '2'
    elsif x == 3
      newarr << '3'
    elsif x == 4
      newarr << '4'
    elsif x == 5
      newarr << '5'
    elsif x == 6
      newarr << '6'
    elsif x == 7
      newarr << '7'
    elsif x == 8
      newarr << '8'
    elsif x == 9
      newarr << '9'
    else
      puts "shouldn't be here"
    end
  end
  newarr.join.reverse
end

def signed_integer_to_string(num)
  return '0' if num == 0
  sign = num < 0 ? '-' : '+'
  "#{sign}#{integer_to_string(num.abs)}"
end

# puts integer_to_string(4321)
# puts integer_to_string(4321) == '4321'
# puts integer_to_string(0) == '0'
# puts integer_to_string(5000) == '5000'

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
