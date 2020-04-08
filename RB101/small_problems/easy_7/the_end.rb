def penultimate(string)
  array = string.split(' ')
  last = array[-2].to_s
end


puts penultimate('Launch School is great!')
puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'
