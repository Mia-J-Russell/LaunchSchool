def select_fruit(input)
  input_keys = input.keys
  counter = 0
  hash = {}

  loop do
    break if counter == input_keys.size

    current_key = input_keys[counter]
    current_value = input[current_key]

    if current_value.downcase == 'fruit'
      hash[current_key] = current_value
    end

    counter += 1
  end

  hash
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

fruits = select_fruit(produce)
puts fruits
