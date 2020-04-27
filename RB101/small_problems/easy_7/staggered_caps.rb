def staggered_case(string, default = 'upcase', count = 'dont')
  array = string.chars
  newarr = []
  counter = 0

  #Further Exploration
  counter = 1 if default == 'downcase'
    array.each do |x|
      if count == 'do'
        if counter.even?
          newarr << x.upcase
        elsif counter.odd?
          newarr << x.downcase
        end
        counter += 1
      elsif count == 'dont'
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
    end
  newarr.join
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
puts staggered_case('bigbooty', 'downcase')
puts staggered_case('ignore 77 the 444 numbers', 'downcase', 'do')
puts staggered_case('ignore 77 the 444 numbers')
puts staggered_case('nu6666666mbers')
puts staggered_case('nu6666666mbers','upcase', 'do')
puts staggered_case('nu6666666mbers','downcase', 'do')
