
# Teniendo el siguiente listado de alumnos realiza las modificaciones solicitadas a continuación.
alumnos = ["juan", "maria", "rodrigo", "daniella", "patricio", "natalia", 
"jose", "rick", "morty", "pedro", "maria", "sebastian", "rosa", "daniela", "juan", "maria", "susana", "monserrat", "rodrigo", "pablo"]

#alumnos.select { |n| n.size == alumnos.max}
# Ordénalos en orden alfabético y guarda la lista ordenada en un nuevo array.
alumnos_ordenados = alumnos.sort{ |a, b| a <=> b}
print "Lista ordenada: 
#{alumnos_ordenados}\n"
# Indica el nombre más largo. En caso de haber más de 1 mostrarlo igual# 
puts "-" * 50
print "Alumnos con el nombre más largo: 
#{alumnos.select { |n| n.size == alumnos.max(){|a, b| a.size <=> b.size  }.length}}\n"
#  Indica el nombre más corto
puts "-" * 50
print "Alumnos con el nombre más corto: 
#{ alumnos.select { |n| n.size == alumnos.min(){|a, b| a.size <=> b.size  }.length }}\n" 
puts "-" * 50
#  Elimina al alumno de la posición 7 (en la lista ordenada), ya que se retiró
puts "Alumno retirado: #{alumnos_ordenados.delete_at(7)}"
# Crea una lista con 11 alumnos nuevos y fusiónala con la lista original.
alumnos_nuevos = ["bastian", "pedro", "javier", "oscar", "julio", "alexandra", 
    "ariana", "rodrigo", "marco", "alexander", "claudia"]
todos_los_alumnos = alumnos.concat(alumnos_nuevos)
puts "-" * 50
print "Todos los alumnos: 
#{todos_los_alumnos}\n"
# Indica cuantos alumnos tiene la lista final.
puts "-" * 50
print "Total de alumnos: 
#{todos_los_alumnos.count}\n"
# Ordena la nueva lista y capitaliza los nombres.
puts "-" * 50
total_alumnos_ordenados = todos_los_alumnos.sort{ |a, b| a <=> b}
print "Lista ordenada y capitalizada: 
#{total_alumnos_ordenados.map { |nombre| nombre.capitalize }}"