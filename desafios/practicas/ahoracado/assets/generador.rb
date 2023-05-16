require "faker"
                        
class GeneradorPalabra

    def self.generar
        al_azar = rand(0..1)
        if al_azar == 0
            return generar_palabra
        else
            return generar_palabra
        end
    end

    private 

    def self.generar_planeta
        Faker::Space.planet.downcase
    end

    def self.generar_palabra
        palabras_secretas = [
            "ruby", "desarrollador", "javascript", 
            "herencia", "sql", "programa", "computador", 
            "gema", "html", "github", "compilador"
        ]
        palabras_secretas[rand(0..palabras_secretas.size-1)]
    end
end 
