def shout_out_to(name)
  newname = name.chars.each { |c| c.upcase! }

  puts 'HEY ' + newname.join
end

shout_out_to('you')

#----------------------------

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('me')

#----------------------------

def shout_out_to(name)
  puts 'HEY ' + name.upcase
end

shout_out_to('him')
