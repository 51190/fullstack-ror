empresa = [
    [3000, 4000, 6000, 10000, 2000],
    [4000, 1000, 5000, 2000, 11000],
    [130000, 40000, 9000, 2000, 12000]
]

total = 0
empresa.each { |i|
    print "Total ventas día #{empresa.index(i) +1}: #{i.sum}\n"
    total += i.sum()
}
print "Total de ventas: #{total}"


#Tenemos las ventas diarias por sucursal
empresa = [[100, 120, 110], [120, 130, 90], [90, 80, 70], [200, 230, 210]]


#Informe ventas suma de todas las sucursales por dia
# i = 0
# empresa.each do |e|
#     puts "#{e.sum}"
# end
# print dias

dias = []


#Informe ventas suma todos los dias por sucursal
(0..empresa[0].length - 1).each do |i|
    valores_diarios = []
    empresa.each do |fila|
        valores_diarios.push(fila[i])
    end
    dias.push(valores_diarios)
end
print dias
puts
dias.each do |d|
    puts "#{d.sum}"
end