def substrings_at_start(string)
  counter = 0
  newarr = []

  while counter < string.length
    newarr << string[0..counter]
    counter += 1
  end
  newarr
end

puts substrings_at_start('abc')
puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
