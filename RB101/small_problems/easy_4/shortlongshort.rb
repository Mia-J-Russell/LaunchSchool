def short_long_short(string, str)
  newstr = ''
  if string.length < str.length
    newstr << string + str + string
  else
    newstr << str + string + str
  end
  newstr
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
