puts "what is your name"
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase} I AM SCREAMING"
else
  puts "Hello #{name}"
end
