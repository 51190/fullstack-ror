require "uri"
require "net/http"
require "json"
# https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=Zrvsp1PxhM2gD1SPMiytALMZh6iMjxGg8kdxlSxx
                    
def request(url_requested)
    url = URI(url_requested)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true 
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER # Se agrega esta línea para verificar Man in the middle
                    
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

api_key = "Zrvsp1PxhM2gD1SPMiytALMZh6iMjxGg8kdxlSxx"
endpoint = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10&api_key="+api_key

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


print photos_count(request(endpoint))