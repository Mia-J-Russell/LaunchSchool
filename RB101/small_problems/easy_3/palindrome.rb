def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  newstring = string.downcase.gsub(/\W/, '')
# newstring = string.downcase.delte('^a-z0-9')
  palindrome?(newstring)
end

def palindromic_number?(num)
  palindrome?(num)
end

#puts palindrome?('madam') == true
#puts palindrome?('Madam') == false          # (case matters)
#puts palindrome?("madam i'm adam") == false # (all characters matter)
#puts palindrome?('356653') == true

# puts real_palindrome?('madam') == true
# puts real_palindrome?('Madam') == true           # (case does not matter)
# puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# puts real_palindrome?('356653') == true
# puts real_palindrome?('356a653') == true
# puts real_palindrome?('123ab321') == false

# puts palindromic_number?(34543) == true
# puts palindromic_number?(123210) == false
# puts palindromic_number?(22) == true
# puts palindromic_number?(5) == true

#couldn't get this further exploration to work.
puts palindromic_number?(05) == false
puts palindromic_number?(050) == true
puts palindromic_number?(0000050) == false
puts palindromic_number?(0005000) == true
puts palindromic_number?(000) == true

#Further exploration
def palindrome_array(array)
  chars = []
  count = 0
  while count < array.size
    chars << array[count]
    count += 1
  end
  chars.reverse.join == chars.join
end

# puts palindrome_array([1, 2, 3, 2, 1])
# puts palindrome_array([1, 2, 3, 4, 5])
# puts palindrome_array('boob')
# puts palindrome_array('booty')
# puts palindrome_array('madam')
# puts palindrome_array(%W(1 2 3 4 3 2 1))
# puts palindrome_array(['12', '32'])
