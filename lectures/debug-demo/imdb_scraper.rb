require 'open-uri'
require 'nokogiri'
require 'pry-byebug'

def fetch_movie_urls
  binding.pry
  url = 'https://www.imdb.com/chart/top'
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)
  urls = []
  html_doc.search('.titleColumn a').first(5).each do |element|
    # binding.pry
    urls << 'http://www.imdb.com' + element.attribute('href').value
  end
  # binding.pry
  urls
end

pp fetch_movie_urls
