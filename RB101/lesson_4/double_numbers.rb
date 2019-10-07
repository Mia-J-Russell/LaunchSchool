def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] *= 2

    counter += 1
  end

  numbers
end

def multiply(numbers, value)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] *= value

    counter += 1
  end

  numbers
end

my_numbers = [1, 3, 7, 12, 8, 2]
#puts my_numbers.object_id
puts my_numbers

#new_numbers = double_numbers!(my_numbers)

#puts new_numbers.object_id
#puts my_numbers.object_id
#puts my_numbers

puts multiply(my_numbers, 3)
