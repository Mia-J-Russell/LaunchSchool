# def cleanup(string)
#   string.gsub(/[\W]/, ' ').squeeze(' ')
# end

#Further exploration
ALPHABET = ('a'..'z').to_a

def cleanup(string)
  array = string.chars
  newarr = []

  array.each do |x|
    if ALPHABET.include?(x)
      newarr << x
    else
      newarr << ' '
    end
  end
  newarr.join.squeeze(' ')
end

puts cleanup("---what's my +*& line?")
puts cleanup("---what's my +*& line?") == ' what s my line '
