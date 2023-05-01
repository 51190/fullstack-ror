$opciones = ["Piedra", "Papel", "Tijera"]
$opcion_usuario = ARGV[0].to_s.capitalize
$opcion_computador = $opciones[Random.new.rand(3)]

def jugar()
    if ($opcion_usuario == $opcion_computador)
        return "Tu haz elegido %s y el computador %s. Empate" % [$opcion_usuario, $opcion_computador]
    elsif es_ganador($opciones.index($opcion_usuario), $opciones.index($opcion_computador))
        return "Tu haz elegido %s y el computador %s. Ganaste" % [$opcion_usuario, $opcion_computador]
    else
        return "Tu haz elegido %s y el computador %s. Perdiste" % [$opcion_usuario, $opcion_computador]
    end
end

def es_ganador(jugador, computador)
    if ((jugador == 0 && computador == 2) ||
         (jugador == 2 && computador == 1) || 
         (jugador == 1 && computador == 0))
        return true
    else
        return false
    end
end

if $opcion_usuario.empty? || !$opciones.include?($opcion_usuario)
    puts "Debes jugar una opción válida.\nOpciones válidas: #{$opciones}\nEjemplo: $ruby juego.rb #{$opciones[Random.new.rand(3)]}"
    return
else
    puts jugar()
end