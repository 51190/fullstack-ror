# persona : { :nombre => "alan", :edad => 42, :altura => 1.58 }

persona : { nombre: "alan", edad: 42, altura: 1.58 }


persona = Hash.new
persona[:nombre] = "marco"
persona[:edad] = 32
persona[:altura] = 1.83



persona = Hash[:name => "marco", :edad => 32, :altura => 1.82 ]


if h.delete(:foo)==nil
  puts "No existe un la la clave para eliminar"
else
  puts "Se eliminó correctamente"
end