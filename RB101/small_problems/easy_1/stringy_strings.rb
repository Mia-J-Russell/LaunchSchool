def stringy(num)
  counter = 0
  str = ''

  num.times do
    if counter.even?
      str << '1'
    else
      str << '0'
    end
    counter += 1
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
