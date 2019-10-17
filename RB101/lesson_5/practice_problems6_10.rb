#practice problem 6

munsters = {
  "Herman" => {"age" => 32, "gender" => "male"},
  "Lily" => {"age" => 30, "gender" => "female"},
  "Grandpa" => {"age" => 402, "gender" => "male"},
  "Eddie" => {"age" => 10, "gender" => "male"},
  "Marilyn" => {"age" => 23, "gender" => "female"}
}
munsters.each do |name, hash|
  puts "#{name} is a #{hash['age']}-year-old #{hash['gender']}"
end

#practice problem 8

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'],
  third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vowels = 'aeiou'
hsh.each do |order, words|
  words.each do |word|
    word.chars.each do |str|
      if vowels.include?(str)
        puts str
      end
    end
  end
end

#practice problem 9

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
newarr =  arr.map do |input|
    input.sort do |a, b|
      b <=> a
    end
  end
puts newarr

#practice problem 10

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
newarr = arr.map do |hash|
  newhash = {}
  hash.each do |key, value|
    newhash[key] = value + 1
  end
  newhash
end
puts newarr
