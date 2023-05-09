def calcular_incremento(salario, inc)
    salario + (salario * inc) /100
end
                
puts "Ingresa el salario actual. Ej: 1000"
salario_actual = gets.chomp.to_i
puts "Ingresa el aumento para el salario. Ej: 10"
incremento = gets.chomp.to_i
puts "El nuevo salario es:"
print calcular_incremento(salario_actual, incremento)