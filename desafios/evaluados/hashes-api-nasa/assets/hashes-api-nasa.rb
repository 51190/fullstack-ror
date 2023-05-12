require "uri"
require "net/http"
require "json"
                                        
def request(url_requested)
    url = URI(url_requested)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true 
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER 
    
                                        
    request  = Net::HTTP::Get.new(url)
    request["cache-control"] = "no-cache"
                                        
    response = http.request(request)
    JSON.parse(response.body)
end
                    
                    
def build_web_page(hash)
    photos = hash['photos'].map { |x| x['img_src']}
    html = "<html>\n<head>\n</head>\n<body>\n\t<ul>\n"
    photos.each do |photo|
        html += "\t\t<li>\n\t\t\t<img src=\"#{photo}\" alt=\"picture\">\n\t\t</li>\n"
    end
    html +="\t</ul>\n</body>\n</html>"
    File.write("page.html", html)
end
                                        
def photos_count(hash)
    cameras = hash['photos'].map { |x| 
        [
            x['camera']['name'], 
            hash['photos'].count{ |y|
                y['camera']['name'] == x['camera']['name'] 
            } 
        ] 
    }
    cameras.to_h
end

api_key = "Zrvsp1PxhM2gD1SPMiytALMZh6iMjxGg8kdxlSxx"
params = "sol=10&api_key="+api_key
endpoint = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?"+params

build_web_page(request(endpoint))
print photos_count(request(endpoint))