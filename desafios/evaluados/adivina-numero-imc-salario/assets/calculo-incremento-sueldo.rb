$salario = 300000

def incremento_sueldo(incremento)
    return $salario * (incremento / 1000)
end

puts incremento_sueldo(120000)