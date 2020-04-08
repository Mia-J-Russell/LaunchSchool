def get_grade(num1, num2, num3)
  average = ((num1 + num2 + num3) / 3)

  case average
  #Further exploration
  when 100..Float::INFINITY then 'A++++'
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

puts get_grade(95, 90, 93)
puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
puts get_grade(100, 120, 175)
