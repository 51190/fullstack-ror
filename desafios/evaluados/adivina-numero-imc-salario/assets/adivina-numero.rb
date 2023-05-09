def menu_principal
    puts "Juego de Adivina el número"
    puts "Dime el rango máximo para generar el número aletorio:"
end

def main
    intentos = 0
    menu_principal
    cantidad = gets.chomp.to_i
    numero_aleatorio = Random.new.rand(cantidad)

    while true
        numero_usuario = gets.chomp.to_i
        if numero_aleatorio == numero_usuario
            intentos += 1
            puts "Felicidades, haz adividado, el número mágico era #{numero_aleatorio}"
            puts "Haz adividado en #{intentos} intentos"
            break
        elsif numero_usuario > numero_aleatorio
            intentos += 1
            puts "El número es menor, seguir intentando"
        elsif numero_usuario < numero_aleatorio
            intentos += 1
            puts "El número es mayor, seguir intentando"
        end
    end
end

main