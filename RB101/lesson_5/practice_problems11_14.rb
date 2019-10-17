# practice problem 11

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
arr2 = arr.map do |are|
  are.select do |ar|
    ar % 3 == 0
  end
end
puts arr2
arr3 = arr.map do |are|
are.reject do |ar|
  ar % 3 != 0
end
end
puts arr3

#practice problem 12

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hsh = {}
arr.each do |first|
  hsh[first[0]] = first[1]
end
puts hsh

#practice problem 13

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
arr2 = arr.sort_by do |uh|
  uh.select do |num|
    num.odd?
  end
end
puts arr2

#practice problem 14

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'}
}
arr = []
hsh.each do |name, sub|
    if sub[:type] == 'fruit'
      sub[:colors].map do |color|
        arr << color.capitalize
      end
    elsif sub[:type] == 'vegetable'
      arr << sub[:size].upcase
    end
end
puts arr
