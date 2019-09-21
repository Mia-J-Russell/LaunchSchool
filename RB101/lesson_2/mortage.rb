puts <<-MSG
Welcome to the mortgage calculator.
Before we begin, can I have your name?
MSG

name = ' '
loop do
  name = gets.chomp
  if name.empty?
    puts "Please enter a name."
  else
    break
  end
end

puts <<-MSG
Great! Hello #{name}! Let's begin!
I'm going to need some information from you.
Let's start with your loan amount.
How much is your loan amount?
MSG

loan_amount = ' '
loop do
  loan_amount = gets.chomp
  if loan_amount.to_f < 0
    puts "That's not a valid loan amount. Please enter a valid loan amount."
  else
    break
  end
end

puts <<-MSG
Okay.
Please enter the Annual Percentage Rate (APR).
Make sure it's a percentage.
MSG

yearly_interest = ' '
loop do
  yearly_interest = gets.chomp
  if yearly_interest.to_f < 0
    puts "That's not a valid percentage. Please enter a valid percentage."
  else
    break
  end
end

puts "Okay. Please enter your loan duration in years."

years = ' '
loop do
  years = gets.chomp
  if years.to_i < 0
    puts "That's not a valid loan duration."
  else
    break
  end
end

interest = yearly_interest.to_f / 100
monthly_interest = interest / 12
months = years.to_i * 12

monthly_payment = loan_amount.to_f * (monthly_interest /
                  (1 - (1 + monthly_interest)**(-months)))

puts "#{name}, your monthly payment is #{format('%02.2f', monthly_payment)}!"

puts "Thank you for using mortage calculator."
