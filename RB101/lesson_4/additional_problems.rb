#practice problem 1

flinstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}
counter = 0
flinstones.each do |name|
  hash["#{name}"] = counter
  counter += 1
end
puts hash

#practice problem 2

ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 5843,
        "Eddie" => 10, "Marilyn" => 22, "Spot" => 237}
add = 0
ages.each_value do |age|
  add = age + add
end
puts add

#practice problem 3

ages.select {|name, age| age < 100}
puts ages

#practice problem 4

puts ages.values.min

#practice problem 5

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.index {|name| name[0,2] == "Be"}

#practice problem 6

puts flintstones.collect {|name| name[0, 3]}

#practice problem 7

statement = "The Flintstones Rock"
frequency = {}
counter = 0
loop do
  frequency["#{statement[counter]}"] = statement.count "#{statement[counter]}"
  counter += 1
  break if counter == statement.size
end
puts frequency

#practice problem 9
words = "the flintstones rock"
puts words.split.map {|word| word.capitalize}.join(' ')

#practice problem 10

munsters = {
  "Herman" => {"age" => 32, "gender" => "male"},
  "Lily" => {"age" => 30, "gender" => "female"},
  "Grandpa" => {"age" => 402, "gender" => "male"},
  "Eddie" => {"age" => 10, "gender" => "male"},
  "Marilyn" => {"age" => 23, "gender" => "female"}
}
munsters.each do |name, info|
  case info["age"]
  when 0...18
    info["age_group"] = "kid"
  when 18...65
    info["age_group"] = "adult"
  else
    info["age_group"] = "senior"
  end
end
puts munsters
