def substrings_at_start(string)
  counter = 0
  newarr = []

  while counter < string.length
    newarr << string[0..counter]
    counter += 1
  end
  newarr
end

def substrings(string)
  counter = 0
  newarr = []

  while counter < string.length
    newarr << substrings_at_start(string[counter..-1])
    counter += 1
  end
  newarr.flatten
end

def palindromes(string)
  array = substrings(string)
  array.select do |substring|
    substring if substring.downcase == substring.downcase.reverse && substring.length > 1
  end
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
puts palindromes('THIS IS A TEST Madam did TTT TtT ttt TTt')
