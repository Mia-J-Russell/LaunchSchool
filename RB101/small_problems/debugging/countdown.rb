def decrease(counter)
  counter - 1
end

counter = 10

10.times do
  puts counter
  counter -= 1
  #decrease(counter)
end

puts 'LAUNCH!'

#------------------------
counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'RELAUNCH!'

#------------------------
counter = 10

while counter > 0
  puts counter
  counter = decrease(counter)
end

puts 'FINAL LAUNCH!'

#-----------------------
counter = 10

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'JUST KIDDING!'
