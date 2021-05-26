require 'open-uri'
require 'nokogiri'

ingredient = 'strawberry'
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

recipes = []

html_doc.search('.standard-card-new__article-title').each do |element|
  recipes << {
    name: element.text.strip,
    url: element.attribute('href').value
  }
end

pp recipes