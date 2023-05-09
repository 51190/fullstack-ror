personas = {
    'Javier' => 31,
    'Victoria' => 26,
    'María José' => 32
}

cosas = {
    :primero => 'foo1',
    :segundo => 'foo2',
    :tercero => 'foo3'
}


random = {
    key1: "value1",
    key2: "value2"
}
#puts personas
random.each { |k,v| 
    print "[Clave: #{k}, Valor: #{v}]\n"
}

productos_feria = {
    'manzana' => 40,
    'apio' => 20,
    'tomate' => 30,
    'aceituna' => 2000,
    'albaca' => 600,
    'zanahoria' => 300
}

puts productos_feria['tomate']