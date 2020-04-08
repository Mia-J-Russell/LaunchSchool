def show_multiplicative_average(array)
  sum = 1
  array.each do |num|
    sum *= num
  end
  average = sum.to_f / array.length
  puts "The result is #{format('%.3f', average)}"
end

puts show_multiplicative_average([3, 5])
puts show_multiplicative_average([6])
puts show_multiplicative_average([2, 5, 7, 11, 13, 17])
