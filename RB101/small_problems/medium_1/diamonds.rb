def diamond(num)
  counter = 0

  num.times do
    stars = "*" * counter
    puts " " + stars + " "
    counter += 1
  end
end

diamond(3)
diamond(1)
diamond(9)
