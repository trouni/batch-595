require 'json'

# TODO: let's read/write data from beers.json
filepath = 'data/beers.json'

# PARSING JSON

serialized_beers = File.read(filepath)
beers = JSON.parse(serialized_beers)

pp beers['beers'][2]['origin']

# STORING IN JSON

beers = [
  { 'name': 'Edelweiss', 'appearance': 'White', 'origin': 'Austria' },
  { 'name': 'Cuvée des Trolls', 'appearance': 'Blond', 'origin': 'Belgium' },
  { 'name': 'Choulette Ambrée', 'appearance': 'Amber', 'origin': 'France' },
  { 'name': 'Gulden Draak', 'appearance': 'Dark', 'origin': 'Belgium' }
]

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beers))
end
