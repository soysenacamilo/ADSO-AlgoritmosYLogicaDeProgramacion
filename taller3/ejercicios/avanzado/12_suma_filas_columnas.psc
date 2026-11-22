Algoritmo 12_suma_filas_columnas
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir matriz, i, j, suma Como Entero
    Dimension matriz(4,4)
    Para i <- 1 Hasta 4 Hacer
        Para j <- 1 Hasta 4 Hacer
            Escribir "Valor [", i, ",", j, "]:"
            Leer matriz(i,j)
        FinPara
    FinPara
    // Sumar las filas; reiniciar suma para cada fila.
    Para i <- 1 Hasta 4 Hacer
        suma <- 0
        Para j <- 1 Hasta 4 Hacer
            suma <- suma + matriz(i,j)
        FinPara
        Escribir "Suma fila ", i, ": ", suma
    FinPara
    // Sumar las columnas; cambiar el orden de los indices.
    Para j <- 1 Hasta 4 Hacer
        suma <- 0
        Para i <- 1 Hasta 4 Hacer
            suma <- suma + matriz(i,j)
        FinPara
        Escribir "Suma columna ", j, ": ", suma
    FinPara
FinAlgoritmo
