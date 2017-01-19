
require './book'
require './music'

hp1 = Book.new('Harry Potter 1')
b5  = Music.new("Beethoven's Fifth")

#puts hp1.read
#puts b5.play

puts "The library has #{ Item.num_total } items in its collection"
puts "The library has loaned out #{ Item.num_checked_out } items"
