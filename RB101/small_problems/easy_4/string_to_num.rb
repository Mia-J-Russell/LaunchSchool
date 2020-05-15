def string_to_integer(string)
  array = string.chars
  newarr = []

  array.map do |x|
    if x == '0'
      newarr << 0
    elsif x == '1'
      newarr << 1
    elsif x == '2'
      newarr << 2
    elsif x == '3'
      newarr << 3
    elsif x == '4'
      newarr << 4
    elsif x == '5'
      newarr << 5
    elsif x == '6'
      newarr << 6
    elsif x == '7'
      newarr << 7
    elsif x == '8'
      newarr << 8
    elsif x == '9'
      newarr << 9
    else
      puts "shouldn't be here"
    end
  end
  newarr.inject{|a,i| a * 10 + i}
end

def string_to_signed_integer(str)
  new_string = string_to_integer(str.delete('-+'))
  str[0] == '-' ? -new_string : new_string
end

# puts string_to_integer('4321')
# puts string_to_integer('4321') == 4321
# puts string_to_integer('570') == 570

puts string_to_signed_integer('-570')
puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
