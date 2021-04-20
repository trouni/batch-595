require 'csv'

# TODO - let's read/write data from beers.csv
filepath = 'data/beers.csv'

## === PARSING ===

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

CSV.foreach(filepath, csv_options) do |row|
  p row['Origin']
end

## === STORING ===

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

beers = [
  { name: 'Edelweiss', appearance: 'White', origin: 'Austria' },
  { name: 'Cuvée des Trolls', appearance: 'Blond', origin: 'Belgium' },
  { name: 'Choulette Ambrée', appearance: 'Amber', origin: 'France' },
  { name: 'Gulden Draak', appearance: 'Dark', origin: 'Belgium' },
]

CSV.open(filepath, 'w', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  beers.each do |beer|
    csv << [beer[:name], beer[:appearance], beer[:origin]]
  end
end