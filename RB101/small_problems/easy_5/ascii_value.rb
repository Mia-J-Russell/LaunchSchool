def ascii_value(string)
  array = string.split('')
  total = 0
  
  array.each do |x|
    total += x.to_s.ord
  end
  total
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
