require_relative "generador"

class Juego
    attr_accessor :palabra_secreta, :vidas
    def initialize
        @palabra_secreta = GeneradorPalabra.generar
        @vidas = 5
    end

    def comenzar
        puts "Adivina la palabra secreta"
        puts "Escribe una letra para ir revelando la palabra"
        puts "Tienes sólo #{@vidas} vidas para adivinar\n"
        guiones = cambiar_letras_a_guiones
        es_igual = guiones.gsub(" ", "") == @palabra_secreta
        while @vidas > 0 && !es_igual
            puts "\nAdivina la palabra oculta!!! Tienes #{@vidas} vidas"
            print "#{guiones}"

            letra = gets.chomp
            letra_encontrada = false

            for posicion_letra in 0..@palabra_secreta.length-1
                if @palabra_secreta[posicion_letra] == letra
                    guiones[posicion_letra * 2] = letra
                    letra_encontrada = true
                end
            end

            if !letra_encontrada
                @vidas -= 1
                puts "\nTe equivocaste jejeje, intenta con otra letra."
            end
        end
    end

    def he_ganado?
        if @vidas > 0
            puts "\nFelicitaciones Adivinaste! La palabra secreta era #{@palabra_secreta}"
        else 
            puts "\nAhorcado !!! X.X Te quedaste con la duda de saber la palabra JAJAJA"
            puts "No mentira, era broma, la palabra secreta era: #{@palabra_secreta}"
        end
    end

    def cambiar_letras_a_guiones
        return "_ " * @palabra_secreta.length
    end
end
