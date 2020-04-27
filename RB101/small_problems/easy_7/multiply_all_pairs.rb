def multiply_all_pairs(array1, array2)
  newarr = []
  array1.each do |num|
    array2.each do |n|
      newarr << num * n
    end
  end
  newarr.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2])
puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
