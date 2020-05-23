require './instabatcher.rb';

puts "username"
username = gets.chomp

puts "password"
password = gets.chomp

puts username
puts password

requester = InstapaperRequester.new(username, password)

puts "Url to send"

url = gets.chomp

requester.prepareUrl(url)

outcome = requester.queryUrl()

puts outcome