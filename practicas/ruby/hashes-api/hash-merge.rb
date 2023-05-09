color_1 = {
    "red" => "#FF0000",
    "green" => "#00FF00"
}
color_2 = {
    "white" => "#FFFFFF",
    "pink" => "#FFB6C1"
}

color_3 = {
    "skyblue" => "#FFC10F",
    "peru" => "#FAB7D2"
}

color1_copia = color_1.merge
# puts color_1.merge(color_2)
# puts color_1.merge(color_2, color_3)

h = {foo: 0, bar: 1, baz: 2}
h1 = {bat: 3, bar: 4}
h2 = {bam: 5, bat:6}
h3 = h.merge(h1, h2) { |key, old_value, new_value| old_value + new_value}
puts h3