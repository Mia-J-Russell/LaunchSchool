def swapcase(string)
  array = string.chars.each do |x|
    if x =~ /[A-Z]/
      x.downcase!
    else
      x.upcase!
    end
  end
  array.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
