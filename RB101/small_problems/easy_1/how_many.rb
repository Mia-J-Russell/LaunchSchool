def count_occurrences(array)
  hash = Hash.new
  array.each do |x|
    #Further Exploration
    x.downcase!
    hash[x] = array.count(x)
  end
  hash
end

vehicles = [
  'car', 'car', 'truck', 'CAR', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

puts count_occurrences(vehicles)
