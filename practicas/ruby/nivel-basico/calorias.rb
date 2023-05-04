def formula_calorias(p, c, g)
    return 4 * (p + c) + 9 * g
end

def pedir_valores()
    puts "Ingresa los GR de proteína"
    peso = gets.to_f
    altura = gets.to_f
    carbohidrato = gets.to_f
end

def calculo_de_calorias()

end
                
puts nivel_de_peso(calcular_imc(peso, altura))
                    