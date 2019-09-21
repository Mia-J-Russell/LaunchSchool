def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num
end

def number?(numb)
  numb.to_f.to_s == numb
end

def op_to_msg(o)
  extra = case o
          when '1'
            'Adding'
          when '2'
            'Subtracting'
          when '3'
            "Multiplying"
          when '4'
            'dividing'
          end
  extra
end

prompt("Welcome to Calculator! Please tell me your name:")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("Please use a valid name")
  else
    break
  end
end

prompt("Hi #{name}")

loop do # main loop
  x = ''
  loop do
    prompt("Give me a number")
    x = gets.chomp

    if valid_number?(x)
      break
    else
      prompt("That's not a valid number")
    end
  end

  y = ''
  loop do
    prompt("Give me another number")
    y = gets.chomp

    if valid_number?(y)
      break
    else
      prompt("That's not a valid number")
    end
  end

  op_prompt = <<-MSG
  What operation would you like to preform?
  1) add
  2) subtract
  3) multiply
  4) divide.
  MSG

  prompt(op_prompt)

  op = ''
  loop do
    op = gets.chomp

    if %w(1 2 3 4).include?(op)
      break
    else
      prompt("Please choose from 1, 2, 3, or 4.")
    end
  end

  prompt("#{op_to_msg(op)} the two numbers...")

  result = case op
           when "1"
             (x.to_i + y.to_i)
           when "2"
             (x.to_i - y.to_i)
           when "3"
             (x.to_i * y.to_i)
           when "4"
             (x.to_f / y.to_f)
           end

  prompt("The result is #{result}")

  prompt("Would you like to preform another calculation?
        (y to calculate again)")

  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Good bye!")
