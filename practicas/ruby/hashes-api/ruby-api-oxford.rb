require 'net/https'
require 'httparty'   # gem install httpparty
response = nil
word = 'small'
uri = URI('https://od-api.oxforddictionaries.com/api/v2/entries/en-gb/' + word)
use_ssl = true
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = use_ssl
http.start do |http|
   req = Net::HTTP::Get.new(uri)
   req['app_id'] = 'YOURAPPID'
   req['app_key'] = 'YOURAPPKEY'
   req['Accept'] = 'application/json'
   response = http.request(req)
   resp = response.body
  puts resp
end