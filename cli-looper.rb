require './instapaperrequester.rb';

puts "username"
username = gets.chomp

puts "password"
password = gets.chomp

puts username
puts password

requester = InstapaperRequester.new(username, password)

requester.loop