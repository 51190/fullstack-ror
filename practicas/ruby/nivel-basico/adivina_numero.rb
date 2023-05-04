$intentos = 0
def menu_principal
    puts "Dime la cantidad máxima para el número aleatorio a generar"
    puts "si juegas una cantidad < 50: tienes 4 intentos "
    puts "si juegas una cantidad > 50 y < 100: tienes 7 intentos"
end

def main
    while true
        menu_principal
        cantidad = gets.chomp.to_i
        numero_aleatorio = Random.new.rand(cantidad)
        puts numero_aleatorio
        
        if cantidad < 50
            while $intentos < 4
                numero_usuario = gets.chomp.to_i
                if numero_aleatorio == numero_usuario
                    $intentos += 1
                    puts "Felicidades, haz adividado, el número mágico era #{numero_aleatorio}"
                    puts "Haz adividado en #{$intentos} intentos"
                    break
                elsif 
                end
            end
        end

    end
end

main