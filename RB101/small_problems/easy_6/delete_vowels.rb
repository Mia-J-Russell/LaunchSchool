def remove_vowels(array)
  array.map do |x|
    x.delete('aeiouAEIOU')
  end
end

puts remove_vowels(%w(ABC AEIOU XYZ))
puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
