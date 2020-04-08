def swap_name(string)
  # array = string.split(' ')
  # firstname = array[0]
  # lastname = array[1]
  # newarr = lastname + ', ' + firstname
  # puts "#{newarr}"
  # newarr
  string.split(' ').reverse.join(', ')
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'
