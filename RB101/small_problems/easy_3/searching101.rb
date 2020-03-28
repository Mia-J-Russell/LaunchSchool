array = []

puts "1st number"
array << gets.chomp
puts "2nd number"
array << gets.chomp
puts "3rd number"
array << gets.chomp
puts "4th number"
array << gets.chomp
puts "5th number"
array << gets.chomp
puts "last number"
last = gets.chomp

if array.include?(last)
  puts "The number #{last} appears in #{array}"
else
  puts "That number isn't in there"
end
