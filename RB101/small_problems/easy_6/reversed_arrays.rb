def reverse!(array)
  counter = 1
  while counter - 1 < array.length / 2
    array[counter - 1], array[-counter] = array[-counter], array[counter - 1]
    counter += 1
  end
  array
end

list = [1,2,3,4]
puts result = reverse!(list)
puts result == [4, 3, 2, 1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id
puts " "

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"]
puts list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []
