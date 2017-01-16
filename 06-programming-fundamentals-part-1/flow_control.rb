# If statements

# if (condition is true)
#   work to do when true
# else
#   work to do when false
# end

count = 9

if count > 10
  puts "The count is greater than 10"
elsif count < 10
  puts "The count is less than 10"
else
  # if the condition is false
  puts "The count is equal to ten"
end

unless count > 10
  puts "Count is less than or equal to 10"
end

# count += 40 if count > 10
# count = 0 unless count > 100


# Loops
while count > 0
  # The work to do repeatedly goes here
  puts count
  count -= 1
  # count = count - 1
end

# Infinite Loop
# while true
#   puts "Looping forever..."
# end

until count == 10
  puts "Count is #{count}"
  count += 1
end


# Iteration
# [0, 1, 2, 3, 4, 5, 6, 7, 8 , 9]
10.times do |number|
  puts "We're on value #{number}"
end

(50..100).each do |number|
  puts "Counting...#{number}"
end
