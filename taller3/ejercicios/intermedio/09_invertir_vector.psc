Algoritmo 09_invertir_vector
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir original, invertido, i Como Entero
    Dimension original(6)
    Dimension invertido(6)
    Para i <- 1 Hasta 6 Hacer
        Escribir "Digite un numero:"
        Leer original(i)
    FinPara
    // La formula 7-i relaciona la primera posicion con la sexta.
    Para i <- 1 Hasta 6 Hacer
        invertido(i) <- original(7-i)
    FinPara
    Escribir "Vector original:"
    Para i <- 1 Hasta 6 Hacer
        Escribir original(i)
    FinPara
    Escribir "Vector invertido:"
    Para i <- 1 Hasta 6 Hacer
        Escribir invertido(i)
    FinPara
FinAlgoritmo
