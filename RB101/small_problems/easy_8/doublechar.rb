def repeater(string)
  array = string.chars
  newarr = []
  array.each do |x|
    newarr << x * 2
  end
  newarr.join
end

def double_consonants(string)
  array = string.chars
  newarr = []
  array.each do |x|
    if x.downcase =~ /[bcdfghjklmnpqrstvwxy]/
      newarr << x * 2
    else
      newarr << x
    end
  end
  newarr.join
end

# puts repeater('Hello')
# puts repeater('Hello') == "HHeelllloo"
# puts repeater("Good job!") == "GGoooodd  jjoobb!!"
# puts repeater('') == ''

puts double_consonants('String')
puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
