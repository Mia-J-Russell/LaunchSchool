def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 1
  while i - 1 < words.length
    reversed_words << words[-i]
    i += 1
  end

  reversed_words.join(' ')
end

puts reverse_sentence('how are you doing')
