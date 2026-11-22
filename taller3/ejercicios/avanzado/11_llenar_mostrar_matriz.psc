Algoritmo 11_llenar_mostrar_matriz
    Definir matriz, i, j Como Entero
    Dimension matriz(3,3)
    // i representa la fila y j representa la columna.
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            Escribir "Valor fila ", i, " columna ", j, ":"
            Leer matriz(i,j)
        FinPara
    FinPara
    Escribir "Matriz ingresada:"
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            Escribir Sin Saltar matriz(i,j), " "
        FinPara
        Escribir "" // Salto de linea al terminar cada fila.
    FinPara
FinAlgoritmo
