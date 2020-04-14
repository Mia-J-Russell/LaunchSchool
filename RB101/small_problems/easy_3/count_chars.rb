puts "please put one or more words"
words = gets.chomp

count = words.split.join.size
puts "there are #{count} characters in \"#{words}\""
