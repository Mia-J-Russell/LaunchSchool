def average(arr)
  sum = 0

  for ar in arr
    sum += ar
  end
  total = sum.to_f / arr.length
end

puts average([1, 5.5, 87.3, 45, 8.42, 8])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
puts average([1, 5, 87, 45, 8, 8]) == 25.666666666666668
puts average([9, 47, 23, 95, 16, 52]) == 40.333333333333336
