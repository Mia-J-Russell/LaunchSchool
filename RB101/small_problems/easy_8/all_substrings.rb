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

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
