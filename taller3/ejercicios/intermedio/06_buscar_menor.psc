Algoritmo 06_buscar_menor
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir v, i, menor, posicion Como Entero
    Dimension v(8)
    Para i <- 1 Hasta 8 Hacer
        Escribir "Digite un numero:"
        Leer v(i)
    FinPara
    // Tomar el primer elemento como menor inicial.
    menor <- v(1)
    posicion <- 1
    Para i <- 2 Hasta 8 Hacer
        Si v(i) < menor Entonces
            menor <- v(i) // Actualizar el menor.
            posicion <- i // Guardar su posicion.
        FinSi
    FinPara
    Escribir "Menor: ", menor
    Escribir "Posicion: ", posicion
FinAlgoritmo
