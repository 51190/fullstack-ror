require "uri"
require "net/http"
def request(url)
    url = URI(url)
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    puts response.read_body
end

def build_web_page
    
end