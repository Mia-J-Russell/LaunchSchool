def running_total(arr)
  int = 0
  arr.map do |x|
    int = int + x
  end
end

#Further exploration
def inject(arr)
  # sum = 0
  # newarr = []
  # arr.each_with_index do |item, index|
  #   sum += item
  #   newarr << sum
  # end
  # newarr

  numarr = []
  newarr = []
  arr.each do |n|
    numarr << n
    newarr << numarr.inject(:+)
  end
  new_arr
end

# puts running_total([2, 5, 13]) == [2, 7, 20]
# puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# puts running_total([3]) == [3]
# puts running_total([]) == []

puts inject([2, 5, 13])
puts inject([14, 11, 7, 15, 20])
