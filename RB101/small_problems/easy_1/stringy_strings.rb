def stringy(num, order = 1)
  counter = 0
  str = ''

  #Further exploration
  if order == 0
    num.times do
      counter.odd? ? str << '1' : str << '0'
      counter += 1
    end
  else
    num.times do
      counter.even? ? str << '1' : str << '0'
      counter += 1
    end
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(5, 0) == '01010'
puts stringy(3, 0) == '010'
