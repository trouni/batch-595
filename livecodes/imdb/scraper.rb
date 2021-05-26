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

def fetch_movie(url)
  html_file = URI.open(url, 'Accept-Language' => 'en').read
  doc = Nokogiri::HTML(html_file)

  cast = []
  doc.search('.credit_summary_item:last-child a').first(3).each do |el|
    cast << el.text.strip
  end
  director = doc.search('.credit_summary_item a').first.text.strip
  storyline = doc.search('.summary_text').text.strip
  title = doc.search('.title_wrapper h1').text.strip[0..-8]
  year = doc.search('#titleYear').text[1..4].to_i

  {
    cast: cast,
    director: director,
    storyline: storyline,
    title: title,
    year: year
  }
end
