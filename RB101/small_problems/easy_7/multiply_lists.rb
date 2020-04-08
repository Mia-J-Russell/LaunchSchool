def multiply_list(array1, array2)
  counter = 0
  newarr = []
  while counter < array1.size
    newarr << array1[counter] * array2[counter]
    counter += 1
  end
  newarr
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
