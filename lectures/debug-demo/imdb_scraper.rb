require 'open-uri'
require 'nokogiri'

def fetch_movie_urls
  url = 'https://www.imdb.com/chart/top'
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)
  urls = []
  html_doc.search('.titleColumn a').first(5).each do |element|
    urls << 'http://www.imdb.com' + element.attribute('href').value
  end
  urls
end

pp fetch_movie_urls
