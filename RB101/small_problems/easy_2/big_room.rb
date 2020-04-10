SQMETERS_TO_SQFEET = 10.7639

def room_size(length, width)
  size = (length * width).round(2)
  sqrfeet = (size * SQMETERS_TO_SQFEET).round(2)
  #Further exploration
  sqrinch = ((size * SQMETERS_TO_SQFEET) / 12).round(2)
  sqrcen = ((size * SQMETERS_TO_SQFEET) / 0.032808).round(2)
  puts "Your room is #{size} square meters " +
      "(#{sqrfeet} square feet)"
  puts "(#{sqrinch} square inches) (#{sqrcen} square centimeters)"
end

puts "length in feet?"
len = gets.chomp.to_f

puts "width in feet?"
wid = gets.chomp.to_f

room_size(len, wid)
