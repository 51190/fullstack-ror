ventas_tienda_1 = [100, 20, 50, 70, 90]
ventas_tienda_2 = [150, 30, 50, 20, 30]

ventas_totales = []
n = ventas_tienda_1.count


n.times do |i|
    ventas_totales.push (ventas_tienda_1[i] + ventas_tienda_2[i]) * 0.10
end

print "#{ventas_totales}\n"
# crea un nuevo arreglo dos veces la misma cantidad de elementos
print "#{ventas_tienda_1 * 2}\n"
# muestra solo un elemento de cada lista (union)
print "#{ventas_tienda_1 | ventas_tienda_2}\n"
# elimila los elementos duplicados 
print "#{ventas_tienda_1 & ventas_tienda_2}\n"
# concatenando
print "#{ventas_tienda_1 + ventas_tienda_2}\n"
# diferencias (se restan los duplicados)
print "#{ventas_tienda_1 - ventas_tienda_2}\n"

