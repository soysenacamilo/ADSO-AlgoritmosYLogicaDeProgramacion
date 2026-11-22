Algoritmo 07_contar_valor
    Definir v, i, buscado, contador Como Entero
    Dimension v(10)
    contador <- 0
    Para i <- 1 Hasta 10 Hacer
        Escribir "Digite un numero:"
        Leer v(i)
    FinPara
    Escribir "Numero que desea buscar:"
    Leer buscado
    // Contar todas las posiciones que coinciden.
    Para i <- 1 Hasta 10 Hacer
        Si v(i) = buscado Entonces
            contador <- contador + 1
        FinSi
    FinPara
    Escribir "Aparece ", contador, " veces."
FinAlgoritmo
