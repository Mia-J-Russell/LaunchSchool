# def scramble(str1, str2)
#   array1 = str1.chars
#   array2 = str2.chars
#
#   values = array2.map do |x|
#     if array1.count(x) >= array2.count(x)
#       true
#     else
#       false
#     end
#   end
#   values.include?(false) ? false : true
# end

def scramble(str1, str2)
  str2.chars.each do |x|
    if str1.count(x) < str2.count(x)
      return false
    end
  true
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
