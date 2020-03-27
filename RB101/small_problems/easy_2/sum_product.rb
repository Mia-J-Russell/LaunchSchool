def sum(num)
  total = 0
  original = num

  while num > 0
    total = total + num
    num -= 1
  end

  puts "The sum of the numbers between 1 and #{original} is #{total}"
end

def product(num)
  total = 1
  original = num

  while num > 0
    total = total * num
    num -= 1
  end

  puts "The product of the numbers between 1 and #{original} is #{total}"
end

puts "give me a number greater than 0"
number = gets.chomp.to_i

loop do
  puts "do you want to do the sum or product (s or p)"
  answer = gets.chomp.downcase

  if answer == 's'
    sum(number)
    break
  elsif answer == 'p'
    product(number)
    break
  else
    puts "that's not a valid response"
  end
end

#puts (1..5).inject { |sum, n| sum + n }
#puts (1..6).inject { |product, n| product * n}
