ingredientes = ["jamón", "queso", "pepperoni", "orégano", "pimienta", "tomates"]


while true
    puts "Agrega un nuevo ingrediente:"
    nuevo_ingrediente = gets.chomp.to_s
    if ingredientes.include?(nuevo_ingrediente.downcase) 
        puts "Ya existe ese ingrediente"
    else 
        ingredientes.push(nuevo_ingrediente)
    end
    puts "¿Quieres agregar eliminar un igrediente? (S/N)"
    respuesta = gets.chomp.to_s
    if respuesta.upcase == "S"
        puts "¿Quieres agregar eliminar un igrediente? (S/N)"
    elif respuesta.upcase == "N"
        puts "Gracias por tu pedido"
        break
    end
end



print "Ingredientes actuales:\n#{ingredientes}"