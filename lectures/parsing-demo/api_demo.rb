require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username

puts "Enter a username:"
username = gets.chomp

url = "https://api.github.com/users/#{username}"

serialized_user = URI.open(url).read
user = JSON.parse(serialized_user)

puts "#{user['name']} is in #{user['location']} and has #{user['public_repos']} public repos."