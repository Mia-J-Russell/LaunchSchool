def word_cap(string)
  # array = string.split(' ')
  # array.each do |x|
  #   x.capitalize!
  # end
  # array.join(' ')

  #string.split(' ').map {|x| x.capitalize!}.join(' ')

  #Further Exploration
  
  # array = string.split(' ')
  # array.each do |x|
  #   x.downcase!
  #   x[0] = x[0].upcase! unless x[0] =~ /[^a-zA-Z]/
  # end
  # array.join(' ')

  array = string.split(' ')
  array.each do |x|
    x.downcase!
    x[0] = x[0].swapcase! unless x[0] =~ /[^a-zA-Z]/
  end
  array.join(' ')
end

puts word_cap('four score and seven')
puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
