def print_in_box(string)
  length = 0
  print "+"
  while length - 1 < string.length + 1
    print "="
    length += 1
  end
  puts "+"

  length = 0
  print "|"
  while length - 1 < string.length + 1
    print " "
    length += 1
  end
  puts "|"

  print "| "
  print "#{string}"
  puts " |"

  length = 0
  print "|"
  while length - 1 < string.length + 1
    print " "
    length += 1
  end
  puts "|"

  length = 0
  print "+"
  while length - 1 < string.length + 1
    print "="
    length += 1
  end
  puts "+"
end

#print_in_box('To boldly go where no one has gone before.')
#print_in_box('Trying to do this')
#print_in_box('This is hard')
#print_in_box('')

puts "Create a sentence:"
words = gets.chomp
system 'clear'
print_in_box(words)
