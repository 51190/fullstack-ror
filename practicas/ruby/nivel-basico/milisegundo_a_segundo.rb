milisegundos = [10000, 50000, 3000, 21000]

segundos = milisegundos.map { |ms| 
    ms / 1000 
}

print "Milisegundos: #{milisegundos}\n"
print "Segundos: #{segundos.select {|s| s >= 21}}\n"