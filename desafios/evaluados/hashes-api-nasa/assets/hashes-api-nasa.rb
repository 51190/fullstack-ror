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
    html = "\n\n\n\n\t\n"
    photos.each do |photo|
        html += "\t\t\n\t\t\t\n\t\t\n"
    end
    html +="\t\n\n"
    File.write("page.html", html)
end
                                        
def photos_count(hash)
    checkcam = 0
    mahli = 0
    navcam = 0
    nombre_camaras = hash['photos'].map { |x|
        if x['camera']['name'] == "CHEMCAM"
            checkcam += 1
            [x['camera']['name'], checkcam] 
        elsif x['camera']['name'] == "MAHLI"
            mahli += 1
            [x['camera']['name'], mahli] 
        else 
            navcam += 1
            [x['camera']['name'], navcam] 
        end
    }
    nombre_camaras.to_h 
end

api_key = "Zrvsp1PxhM2gD1SPMiytALMZh6iMjxGg8kdxlSxx"
params = "sol=10&api_key="+api_key
endpoint = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?"+params

build_web_page(request(endpoint))
print photos_count(request(endpoint))