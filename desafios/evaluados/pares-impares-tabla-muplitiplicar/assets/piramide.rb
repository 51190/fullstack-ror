caracter = "#"

20.times { |i| 
    puts " " * (20 - i) + caracter
    caracter += "#" * 2
}