require "open-uri"
require "json"

# http://www.73summits.com/ergdb/api/list/json 
# your_token_access = ''

home_url = "http://www.73summits.com/ergdb/api/list/json"

home_in_json_string = open(home_url).read

home_in_ruby = JSON.parse(home_in_json_string)

posts = home_in_ruby

posts.each do |p|
puts p["dateAdded"] + p["author"]
end

