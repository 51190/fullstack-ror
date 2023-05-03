opcion_usuario = ARGV[0].to_s.capitalize
opciones = ["Piedra", "Papel", "Tijera"]                    
opcion_computador = opciones[Random.new.rand(3)]

if opcion_usuario.empty? || !opciones.include?(opcion_usuario)
    puts "Debes jugar una opción válida."
    puts "Opciones válidas: #{opciones}."
    puts "Ejemplo: $ruby juego.rb #{opciones[Random.new.rand(3)]}"
else 
    if opcion_usuario == opcion_computador
        puts "Tú haz elegido %s y el computador %s. Empate" % [opcion_usuario, opcion_computador]
    elsif (opciones.index(opcion_usuario) == 0 && opciones.index(opcion_computador) == 2) ||
            (opciones.index(opcion_usuario) && opciones.index(opcion_computador) == 1) || 
            (opciones.index(opcion_usuario) == 1 && opciones.index(opcion_computador) == 0)
        puts "Tú haz elegido %s y el computador %s. Ganaste" % [opcion_usuario, opcion_computador]
    else
        puts "Tú haz elegido %s y el computador %s. Perdiste" % [opcion_usuario, opcion_computador]
    end
end

