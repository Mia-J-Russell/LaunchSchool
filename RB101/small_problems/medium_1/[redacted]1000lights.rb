# #Write a method that takes one argument, the total number of switches, and
# #returns an Array that identifies which lights are on after n repetitions.
#
# Example with n = 5 lights:
#
# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].
#
# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].
def lights_on_off(n)
  
end

puts lights_on_off(5)
puts lights_on_off(10)
