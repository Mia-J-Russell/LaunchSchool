a = (20..200).to_a

#Further exploration
puts "What is the name of teddy?"
name = gets.chomp
 name = "Teddy" if name.empty?

puts "#{name} is #{a.sample} years old"
