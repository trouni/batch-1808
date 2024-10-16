require_relative 'car'

bartek = Car.new('black')
# p bartek
bartek.start_engine!
# p bartek

chafique = Car.new('red')

# puts "Bartek's car is a #{bartek.color} #{bartek.brand}."
puts "Chafique's car is a #{chafique.color} #{chafique.brand}."

puts "Chafique repaints his car in blue..."

# chafique.color = 'blue' # same as chafique.color=('blue')
chafique.repaint('blue')

puts "Chafique's car is now a #{chafique.color} #{chafique.brand}."