def interleave(array1, array2)
  newarr = []
  counter = 0
  loop do
    break if counter >= array1.size
    newarr << array1[counter]
    newarr << array2[counter]
    counter += 1
  end
  newarr
end

puts interleave([1, 2, 3], ['a', 'b', 'c'])
puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
