def average(arr)
  sum = 0

  for ar in arr
    sum = ar + sum
  end
  total = sum/arr.length
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
