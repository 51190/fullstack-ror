def calcular_imc(p, a)
    return p / (a * a)
end

"""
- Obesidad grado I: 30 - 34.9 - Moderado
- Obesidad grado II: 35 - 39.9 - Severo
- Obesidad grado III: Más de 40 - Muy severo
"""
def nivel_de_peso(imc)
    if imc <= 34.9
        return "Moderado"
    elsif imc <= 39.9
        return "Severo"
    else 
        return "Muy severo"
    end
end

peso = gets.to_f
altura = gets.to_f
puts nivel_de_peso(calcular_imc(peso, altura))