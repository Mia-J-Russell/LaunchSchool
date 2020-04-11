def oddities(array)
  counter = 0
  arr = []
  while counter < array.length
    arr << array[counter] if counter.even?
    counter += 1
  end
  arr
end

#Further exploration
def evensities(array)
  counter = 0
  arr = []
  while counter < array.length
    arr << array[counter] if counter.odd?
    counter += 1
  end
  arr
end

def evensities2(array)
  arr = []
  array.each_index do |x|
    arr << array[x] if x.odd?
  end
  arr
end

# puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# puts oddities(['abc', 'def']) == ['abc']
# puts oddities([123]) == [123]
# puts oddities([]) == []
# puts evensities([2, 3, 4, 5, 6])
# puts evensities([1, 2, 3, 4, 5, 6])
puts evensities2([1, 2, 3, 4, 5, 6])
puts evensities2([2, 3, 4, 5, 6])
