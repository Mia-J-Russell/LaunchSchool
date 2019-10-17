#practice problem 15

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr2 = arr.select do |hash|
  hash.all? do |key, value|
    value.all? do |num|
      num.even?
    end
  end
end
puts arr2

#practice problem 16

def create_UUID
charset = Array('A'..'Z') + Array('a'..'z') + Array('0'..'9')
arruiid = ''

  8.times do
    arruiid << charset.sample
  end
  arruiid << '-'
  4.times do
    arruiid << charset.sample
  end
  arruiid << '-'
  4.times do
    arruiid << charset.sample
  end
  arruiid << '-'
  12.times do
    arruiid << charset.sample
  end
arruiid
end

puts create_UUID
