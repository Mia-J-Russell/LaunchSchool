#practice problem 1

arr = ['10', '11', '9', '7', '8']
arr2 = arr.sort do |num, num2|
      num2.to_i <=> num.to_i
    end
puts arr2

#practice problem 2

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

sorted = books.sort_by do |hash|
hash[:published]
end
puts sorted

#practice problem 3

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
puts arr1[2][1][3]
arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
puts arr2[1][:third][0]
arr3 = [['abc'], ['def'], {third: ['ghi']}]
puts arr3[2][:third][0][0]
hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
puts hsh1['b'][1]
hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
puts hsh2[:third].key(0)

#problem 4

arr1 = [1, [2, 3], 4]
arr1[1][1] = 4
puts arr1

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4
puts arr2

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4
puts hsh1

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4
puts hsh2

# problem 5

munsters = {
  "Herman" => {"age" => 32, "gender" => "male"},
  "Lily" => {"age" => 30, "gender" => "female"},
  "Grandpa" => {"age" => 402, "gender" => "male"},
  "Eddie" => {"age" => 10, "gender" => "male"},
  "Marilyn" => {"age" => 23, "gender" => "female"}
}
total_age = 0
munsters.each do |name, hsh|
  if hsh['gender'] == 'male'
    total_age = hsh['age'] + total_age
  end
end
puts total_age
