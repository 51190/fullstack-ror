## Desafío evaluado - Flujo, ciclos y Métodos (I) : Piedra Papel o Tijera

- **Módulo**: Introducción a la programación con Ruby 
- **Programa**: Desarrollo Ruby on Rails para emprendimientos de tipo Startup - 0047

![image](https://github.com/mach-911/fullstack-ror/assets/70834807/c10baa0e-83b8-42a5-939b-d241a5fefc16)

---

## Algoritmo

```mermaid
flowchart TB
  inicio([Inicio]) 
	--> paso2[Leer el dato ingresado desde ARGV\ny asignarla a una variable llamada\n'opcion_usuario'\n\n]
	--> paso3[Gestionar un número aleatorio entre 0 y 2\ny asignarla a una variable llamada\n'oponente'\n\n]
	--> paso4[Las opciones serán asignada a un arreglo\ncon 3 elementos\n0='Piedra', 1='Papel', 2='Tijera'\n\n]
	--> paso5{opcion_usuario = oponente}
	paso5 -->|Si| paso6[Mostramos el mensaje por pantalla:\n'Empate'\n\n]
	paso6 ----> fin([Fin])
	paso5 -->|No| paso7{opcion_usuario='Piedra' AND oponente='Tijera'\nOR\nopcion_usuario='Papel' AND oponente='Piedra'\nOR\nopcion_usuario='Tijera' AND oponente='Papel'\n\n\n}
	paso7 -->|Si| paso8[Mostramos el mensaje por pantalla:\n'Ganaste'\n\n]
	paso8 ----> fin([Fin])
	paso7 -->|No| paso9[Mostramos el mensaje por pantalla:\n'Perdiste'\n\n]
	paso9 ----> fin([Fin])
```

---

### Despliegue 

[![Abrir en Github Pages](https://img.shields.io/badge/-GitHub%20Pages-%23000?style=for-the-badge&logo=github&logoColor=ffffff)](https://mach-911.github.io/fullstack-ror/desafios/evaluados/pidra-papel-tijera/index.html)


### Uso

![gif](https://raw.githubusercontent.com/mach-911/fullstack-ror/gh-pages/desafios/evaluados/piedra-papel-tijera/assets/desafio_ejecutado.gif)
