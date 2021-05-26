require_relative '../scraper'

describe '#fetch_movie_urls' do
  it 'should return the urls of the top 5 movies from IMDB' do
    actual = fetch_movie_urls
    expected = [
      "http://www.imdb.com/title/tt0111161/",
      "http://www.imdb.com/title/tt0068646/",
      "http://www.imdb.com/title/tt0071562/",
      "http://www.imdb.com/title/tt0468569/",
      "http://www.imdb.com/title/tt0050083/"
    ]
    expect(actual).to eq(expected)
  end
end

describe '#fetch_movie' do
  it 'should return a hash with all the movie info' do
    dark_knight_url = 'http://www.imdb.com/title/tt0468569/'
    actual = fetch_movie(dark_knight_url)
    expected = {
      cast: [ "Christian Bale", "Heath Ledger", "Aaron Eckhart" ],
      director: "Christopher Nolan",
      storyline: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
      title: "The Dark Knight",
      year: 2008
    }
    expect(actual).to eq(expected)
  end
end