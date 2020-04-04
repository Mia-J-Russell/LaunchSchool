def triangle(num)
  count = 1
  while count < num + 1
    print (' ' * (num - count))
    puts ('*' * count)
    count += 1
  end
end

def left_triangle(num)
  count = 1
  while count < num + 1
    print ('*' * count)
    puts (' ' * (num - count))
    count += 1
  end
end

def upside_down_triangle(num)
  count = 1
  while count < num + 1
    print ('*' * ((num + 1) - count))
    puts (' ' * (num - count))
    count += 1
  end
end

def right_upside_down_triangle(num)
  count = 1
  while count < num + 1
    print (' ' * (count - 1))
    puts ('*' * ((num + 1) - count))
    count += 1
  end
end

#triangle(5)
#triangle(9)

#left_triangle(5)

#upside_down_triangle(5)

right_upside_down_triangle(5)
