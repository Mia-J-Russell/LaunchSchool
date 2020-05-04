def sum_of_sums(array)
  bigcounter = 0
  totalsum = 0

  array.each do
    counter = 0
    sum = 0
    loop do
      break if counter > bigcounter
      sum = sum + array[counter]
      counter += 1
    end
    totalsum = sum + totalsum
    bigcounter += 1
  end
  totalsum
end

puts sum_of_sums([3, 5, 2])
puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
