Algoritmo 14_transponer_matriz
    Definir matriz, transpuesta, i, j Como Entero
    Dimension matriz(3,3)
    Dimension transpuesta(3,3)
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            Escribir "Valor [", i, ",", j, "]:"
            Leer matriz(i,j)
        FinPara
    FinPara
    // Intercambiar fila y columna al copiar el elemento.
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            transpuesta(j,i) <- matriz(i,j)
        FinPara
    FinPara
    Escribir "Matriz original:"
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            Escribir Sin Saltar matriz(i,j), " "
        FinPara
        Escribir ""
    FinPara
    Escribir "Matriz transpuesta:"
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            Escribir Sin Saltar transpuesta(i,j), " "
        FinPara
        Escribir ""
    FinPara
FinAlgoritmo
