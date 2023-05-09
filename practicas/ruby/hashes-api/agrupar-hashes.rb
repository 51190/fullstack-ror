numeros = [1,2,3,4,5,6,7,8]

agrupados_par_impar = numeros.group_by { |numero| numero.even? }

hash = {foo: 0, bar:1, baz: 0, bat: 1}

#agrupados_valor = hash.group_by { |key, value| value }
#agrupados_valor = hash.group_by { |key, value| value }



notas_pruba = {"brayan": 7, "miguel":7, "marcelo": 2, "maykol": 3, "francisco": 3}
agrupados_por_nota = notas_pruba.group_by {|key, value| value}

#puts agrupados_por_nota

colores = {
    "red": "#FF0000",
    "green": "#00FF00",
    "blue": "#0000FF"
}

colores_array = colores.to_a

#print colores_array
print colores_array.flatten
puts 
print colores_array.class
