def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

def reverse_words(string)
  array = []

  string.split(' ').each do |str|
    if str.length >= 5
      str.reverse!
    end
    array << str
  end
  array.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
