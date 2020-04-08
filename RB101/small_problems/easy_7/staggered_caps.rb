def staggered_case(string)
  array = string.chars
  counter = 0
  newarr = []
  array.each do |x|
    if counter.even? && x =~ /[A-Za-z]/
      newarr << x.upcase
    elsif counter.odd? && x =~ /[A-Za-z]/
      newarr << x.downcase
    else
      newarr << x
      counter -= 1
    end
      counter += 1
  end
  newarr.join
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
