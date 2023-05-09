require "uri"
require "net/http"

url = URI("https://jsonplaceholder.typicode.com/users")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)

response = https.request(request)
puts response.read_body
