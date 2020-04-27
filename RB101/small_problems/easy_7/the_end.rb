def penultimate(string)
  array = string.split(' ')
  #Further Exploration
  return array[-2].to_s if array.size >= 2
  string
end


puts penultimate('Launch School is great!')
puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'
puts penultimate('')
puts penultimate('a')
