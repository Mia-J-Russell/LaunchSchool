puts "what is your age?"
age = gets.chomp.to_i

puts "what age are you retiring?"
retire = gets.chomp.to_i

agediff = retire - age

puts "It's 2020. you will retire in #{2020 + agediff}"
puts "only #{agediff} years left!"
