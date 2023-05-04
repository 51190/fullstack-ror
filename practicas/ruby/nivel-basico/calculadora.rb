def operaciones(operacion)
    if operacion == 1
        num1, num2 = pedir_numeros
        puts "La adición de #{num1} + #{num2} es: #{num1.to_i+num2.to_i}".upcase
    elsif operacion == 2
        num1, num2 = pedir_numeros
        puts "La diferencia de #{num1} - #{num2} es: #{num1.to_i-num2.to_i}".upcase
    elsif operacion == 3
        num1, num2 = pedir_numeros
        puts "La multiplicación de #{num1} x #{num2} es: #{num1.to_i *num2.to_i}".upcase
    elsif operacion == 4
        num1, num2 = pedir_numeros
        puts "La división de #{num1} / #{num2} es: #{num1.to_f / num2.to_f}".upcase
    elsif operacion == 5
        num1, num2 = pedir_numeros
        puts "El resto de la división de #{num1} / #{num2} es: #{num1.to_i % num2.to_i}".upcase
    elsif operacion == 6
        num1, num2 = pedir_numeros
        puts "La potencia de #{num1} elevado a #{num2} es: #{num1.to_i ** num2.to_i}".upcase
    else 
        mensaje("error", "DEBES INGRESAR ALGUNA OPCIÓN ENTRE 1 Y 6 PARA SEGUIR")
        pedir_operacion
    end
end

def pedir_operacion
    menu_calculadora
    operacion = gets.chomp.to_i
    operaciones(operacion)
end

def pedir_numeros 
    while true
        print "Ingresa el primer valor para operar\n> ".upcase
        num1 = gets.chomp
        print "Ingresa el segundo valor para operar\n> ".upcase
        num2 = gets.chomp
        if /(^[0-9]{1}*$)/i.match(num1) && /(^[0-9]{1}*$)/i.match(num2) 
            return [num1, num2]
        else
            Gem.win_platform? ? (system "cls") : (system "clear")
            mensaje("error", "DEBES INGRESAR SOLO NÚMEROS")
        end
    end
end

def menu_calculadora
    print "SELECCIONA UNA OPERACIÓN\n\n 1) SUMAR\t2) RESTAR\n 3) MULTIPLICAR\t4) DIVIDIR\n 5) MÓDULO\t6) POTENCIA\n> "
end

def menu_principal
    print(":=="*16+":\n"+"|\tBIENVENIDO A LA CALCULADORA RUBY"+"|".rjust(9)+"\n"+":=="*16+":\n"+"SELECCIONA UNA OPCIÓN:".center(45)+"\n".center(22)+"-" * 22 +"\n[U]SAR CALCULADORA".rjust(21)+"[S]ALIR DEL PROGRAMA".rjust(21)+"\n> ")
end

def mensaje(tipo, mensaje="")
    if tipo == "error"
        print("\a"+"+".rjust(13)+"--"*9+"+\n"+"| OPCIÓN INVÁLIDA!".rjust(30)+'|'.rjust(2)+"\n"+"+".rjust(13)+"--"*9+"+\n"+"#{mensaje}\n".rjust(36)) 
    elsif tipo == "salida"
        print("+".rjust(7)+"--"*17+"+\n"+"| ".rjust(8))
        for letra in "GRACIAS POR USAR MI CALCULADORA".chars
            print(letra)
            sleep(0.045)
        end 
        print("|".rjust(3)+"\n"+"+".rjust(7)+"--"*17+"+")
        sleep(2)
        system("start https://www.buymeacoffee.com/9111592")
    end
end

def main 
    while true
        menu_principal
        opcion = gets.chomp.to_s
        if opcion.upcase == 'U'
            pedir_operacion
        elsif opcion.upcase == 'S'
            mensaje("salida")
            break
        else
            Gem.win_platform? ? (system "cls") : (system "clear")
            mensaje("error", "DEBES INGRESAR LA TECLA U (para usar) o S (para salir)")
        end
    end
end
main