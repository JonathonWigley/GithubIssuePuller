require  'net/http'
require 'json'

def create_agent
    uri = URI('https://api.github.com')
    http = Net::HTTP.new(uri.host, uri.port)
    req = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/vnd.github.VERSION.raw+json')
    req.body = {user_url: 'https://api.github.com/users/jonathonwigley'}.to_json
    res = http.request(req)
    puts "response #{res.body}"
rescue => e
    puts "failed #{e}"
end

def get_data
url = 'http://api.github.com'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    puts "response: #{response}"
rescue => e
    puts "failed #{e}"
end

create_agent