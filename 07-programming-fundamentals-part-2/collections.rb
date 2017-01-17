# Arrays

empty_array = []
colours = ["red", "blue", "green", "yellow", "orange"]
#            0       1        2        3         4

# Fetch one item
colours[2] # => "green"
colours[0] # => "red"
colours[4] # => "orange"

# Count the items in the array
colours.count # => 5

# Add new item to the array
colours << "periwinkle"
# colours.push("periwinkle")

# Remove an item from the end of the array
colours.pop

# Sort an array
colours.sort

colours.each do |colour|
  puts colour
end

colours.map do |colour|
  colour.upcase
end


# Hashes
empty_hash = {}
bttf = { :title => "Back to the Future", director: "Robert Zemeckis" }

# Symbols
:title

bttf.count # => 2

bttf[:title] # => "Back to the Future"
bttf[:director] # => "Robert Zemeckis"

bttf[:year] # => nil

# Add a new item to the Hash
bttf[:year] = 1985

bttf.delete(:year)


bttf.each do |key, value|
  puts "#{key} = #{value}"
end

bttf.map do |key, value|
  "#{key} = #{value}"
end
