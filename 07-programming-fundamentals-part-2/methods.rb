number = 10

def sum(a, b)
  a + b
  puts "The first operand is #{a}"
  puts "The second operand is #{b}"
  number
end

def square(number)
  result = 0

  while true
    result += number
    return result if result = number * number
  end
end
