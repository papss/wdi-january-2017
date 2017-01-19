
require './book'
require './music'

def report(day)
  puts "Day #{day}"
  puts "-----"
  puts "The library has #{ Item.num_total } items in its collection"
  puts "The library has loaned out #{ Item.num_loaned } items"
end

hp1 = Book.new('Harry Potter 1')
b5  = Music.new("Beethoven's Fifth")
hp2 = Book.new('Harry Potter 2')
b6  = Music.new("Beethoven's 6")

report(0)
hp1.check_out

report(1)
b5.check_out

report(2)
hp1.check_in
b5.check_in

report(3)
