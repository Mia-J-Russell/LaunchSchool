def fizzbuzz(start, endnum)
  while start <= endnum
    if start % 3 == 0 && start % 5 == 0
      print 'fizzbuzz'
    elsif start % 3 == 0
      print 'fizz'
    elsif start % 5 == 0
      print 'buzz'
    else
      print start
    end
    start += 1
  end
end

puts fizzbuzz(1, 15)
