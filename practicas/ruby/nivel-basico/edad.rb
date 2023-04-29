anio_actual = Time.now.year

print "En que año naciste: "
anio_nacimiento = gets.chomp.to_i

edad = anio_actual - anio_nacimiento

if edad > 120
    print "Imposible viejo!"
else
    puts edad
end 