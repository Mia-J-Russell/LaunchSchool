puts "bill amount?"
bill = gets.chomp.to_f

puts "tip percentage?"
percent = gets.chomp.to_f

tip = bill * (percent / 100)
total = (bill + tip).round(2)

#Further exploration
puts format("the tip is %.2f" % tip)
puts format("the total is %.2f" % total)
