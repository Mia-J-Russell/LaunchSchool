puts "what is your age?"
age = gets.chomp.to_i

puts "what age are you retiring?"
retire = gets.chomp.to_i

agediff = retire - age

puts "It's #{Time.now.year}. you will retire in #{Time.now.year + agediff}"
puts "only #{agediff} years left!"
