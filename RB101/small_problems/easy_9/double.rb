def twice(num)
  string = num.to_s
  array = string.split('')
  firsthalf = []
  secondhalf = []
  array.each_index do |x|
    if x < (array.length / 2)
      firsthalf << array[x]
    else
      secondhalf << array[x]
    end
  end

  if  firsthalf.join.to_i == secondhalf.join.to_i
    num
  else
    (num * 2)
  end
end


puts twice(44)
puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
