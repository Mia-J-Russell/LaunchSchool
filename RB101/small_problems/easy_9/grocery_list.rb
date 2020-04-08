require 'pry-byebug'

def buy_fruit(array)
  newarr = []
  array.each do |arr|
    arr[1].times do
      newarr << arr[0]
    end
  end
  newarr
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
