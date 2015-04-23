require "json"
require "digest/md5"

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "Email?"
email = gets.chomp
record = data[email]
if record == nil
  puts "No match"
  exit
else
  puts "Match"
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "password?"
password = gets.chomp
hash = Digest::MD5.hexdigest(password)
if hash == record["password"]
  puts "Match"
else
  puts "No match"
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "favorite color?"
hash = gets.chomp.downcase
if hash == record["favorite_color"]
  puts "Match"
else
  puts "No match "
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "favorite animal?"
hash = gets.chomp.downcase
if hash == record["favorite_animal"]
  puts "Match"
else
  puts "No match "
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "city born?"
hash = gets.chomp.downcase
if hash == record["city_born"]
  puts "Match"
else
  puts "No match "
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "favorite school subject?"
hash = gets.chomp.downcase
if hash == record["favorite_school_subject"]
  puts "Match"
else
  puts "No match "
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "favorite icecream flavor?"
hash = gets.chomp.downcase
if hash == record["favorite_ice cream flavor"]
  puts "Login Success!"
else
  puts "No match "
  exit
end