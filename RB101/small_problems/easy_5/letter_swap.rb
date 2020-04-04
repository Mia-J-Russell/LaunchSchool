def swap(string)
  newstr = string.split(' ')
  swap = newstr.each do |str|
           first = str[0]
           last = str[-1]
           str[0] = last
           str[-1] = first
         end
  swap.join(' ')
end

# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end
#
# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end

puts swap('Abcde')
puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
