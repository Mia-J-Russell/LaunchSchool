first = ''
loop do
  puts "enter the 1st number"
  first = gets.chomp.to_f
  if first == 0
    puts "Can't be 0"
  else
    break
  end
end

second = ''
loop do
  puts "enter the second number"
  second = gets.chomp.to_f
  if second == 0
    puts "Can't be 0"
  else
    break
  end
end

puts "#{first} + #{second} = #{first + second}"
puts "#{first} - #{second} = #{first - second}"
puts "#{first} * #{second} = #{first * second}"
puts "#{first} / #{second} = #{first / second}"
puts "#{first} % #{second} = #{first % second}"
puts "#{first} ** #{second} = #{first ** second}"
