ingredientes = open("ingredientes").read

ingredientes.split("\n").each { |i|
    puts i
}