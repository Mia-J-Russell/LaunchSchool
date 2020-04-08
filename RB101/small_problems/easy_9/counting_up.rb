def sequence(num)
  array = []
  counter = 0
  1.upto(num) do |x|
    array << num + counter
    counter -= 1
  end
  array.reverse
end

puts sequence(3)
puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
