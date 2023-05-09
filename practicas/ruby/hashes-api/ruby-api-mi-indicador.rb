require "uri"
require "net/http"
require "json"

url = URI("https://mindicador.cl/api")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)

response = https.request(request)
results = JSON.parse(response.read_body) # parsear a HASH

transform = results.to_a # parsear a ARRAY
#print transform[3][1]

valor_uf = transform[3][1]

valor_uf.each { |k,v|
    puts v
}
