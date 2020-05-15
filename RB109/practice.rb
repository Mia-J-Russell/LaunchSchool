def accum(string)
  counter = 0
  array = string.chars
  newarr = []

  array.each do |x|
    x << x * counter
    newarr << x.capitalize
    counter += 1
  end

  newarr.join("-")
end


puts accum("abcd")    # "A-Bb-Ccc-Dddd"
puts accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
puts accum("cwAt")    # "C-Ww-Aaa-Tttt"
