def letter_percentages(string)
  hash = { :lowercase => 0, :uppercase => 0, :neither => 0}
  lower = string.scan(/[a-z]/).size
  upper = string.scan(/[A-Z]/).size
  neither = string.scan(/[^A-Za-z]/).size

  sum = lower + upper + neither

  hash[:lowercase] = (lower / sum.to_f) * 100
  hash[:uppercase] = (upper / sum.to_f) * 100
  hash[:neither] = (neither / sum.to_f) * 100

  hash
end

puts letter_percentages('abCdef 123')
puts letter_percentages('AbCd +Ef')
puts letter_percentages('123')
puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
