def center_of(string)
  if string.length.odd?
    return string[(string.length / 2)]
  else
    return string[(string.length / 2) - 1] + string[(string.length / 2)]
  end
end

puts center_of('Launch')
puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
