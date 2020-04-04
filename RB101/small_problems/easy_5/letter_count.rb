def word_sizes(string)
  newstr = string.split(' ')
  hash = Hash.new(0)
  newstr.each do |str|
    clean_string = str.gsub(/[^a-zA-Z ]/, '')
    length = str.length
    hash[length] += 1
  end
  hash
end

puts word_sizes("What's up doc?")
puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
