puts "Este programa dibujará una matriz con una diagonal de X al centro."
puts "Escribe un número para el tamaño de la matriz."
puts "Escribe 0 para terminar el programa."

cantidad = gets.chomp.to_i



while cantidad > 0

    cantidad.times do |i|
        casila = "|_|" 
        puts casila * (cantidad - i - 1) + "|X|" + casila * i
    end

    cantidad = gets.chomp.to_i

    if cantidad != 0
        puts "======================================================="
        puts "Ingrese otro tamaño o escriba 0 para salir del programa"
    end
end