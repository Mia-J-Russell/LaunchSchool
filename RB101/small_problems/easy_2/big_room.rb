SQMETERS_TO_SQFEET = 10.7639

def room_size(length, width)
  size = (length * width).round(2)
  puts"Your room is #{size} square meters " +
      "(#{(size * SQMETERS_TO_SQFEET).round(2)} square feet)"
end

puts "length?"
len = gets.chomp.to_f

puts "width?"
wid = gets.chomp.to_f

room_size(len, wid)
