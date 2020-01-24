def digit_list(num)
  array = num.to_s.split('').map { |x| x.to_i }
end

puts digit_list(12345)
puts digit_list(7)
puts digit_list(375290)
puts digit_list(444)
