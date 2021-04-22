require_relative 'restaurant'
require_relative 'fast_food'

puts "Instantiating a restaurant..."

yakiniku = Restaurant.new("Abdul's Yakiniku", "Nerima", "bbq", 30, "Abdul")

puts "#{yakiniku.name} has #{yakiniku.seats} seats."

puts "The restaurant is undergoing some renovations..."

yakiniku.seats += 20

puts "#{yakiniku.name} now has #{yakiniku.seats} seats."

puts "#{yakiniku.name} is currently #{yakiniku.open? ? 'open' : 'closed'}."

puts "Ryan, Lena and Ayaka are making a reservation to the Yakiniku."
yakiniku.book('Ryan')
yakiniku.book('Lena')
yakiniku.book('Ayaka')

p yakiniku

puts "Instantiating a fast-food restaurant..."
mcdonalds = FastFood.new("McDonald's", 'Tokyo', 'burgers', 50, 3)

puts "#{mcdonalds.name} has #{mcdonalds.seats} seats."

puts "#{mcdonalds.name} is currently #{mcdonalds.open? ? 'open' : 'closed'}."

puts "Trying to make a booking at #{mcdonalds.name}:"
mcdonalds.book('Lena')
p mcdonalds