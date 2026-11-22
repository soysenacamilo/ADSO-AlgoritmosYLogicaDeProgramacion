Algoritmo 15_contar_primos_matriz
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir matriz, i, j, divisor, totalPrimos Como Entero
    Definir esPrimo Como Logico
    Dimension matriz(4,4)
    totalPrimos <- 0
    Para i <- 1 Hasta 4 Hacer
        Para j <- 1 Hasta 4 Hacer
            Escribir "Valor [", i, ",", j, "]:"
            Leer matriz(i,j)
        FinPara
    FinPara
    // Revisar todos los elementos de la matriz.
    Para i <- 1 Hasta 4 Hacer
        Para j <- 1 Hasta 4 Hacer
            esPrimo <- Verdadero
            // Los numeros menores que 2 no son primos.
            Si matriz(i,j) < 2 Entonces
                esPrimo <- Falso
            SiNo
                // Buscar divisores exactos entre 2 y el numero anterior.
                Para divisor <- 2 Hasta matriz(i,j)-1 Hacer
                    Si matriz(i,j) MOD divisor = 0 Entonces
                        esPrimo <- Falso
                    FinSi
                FinPara
            FinSi
            Si esPrimo Entonces
                totalPrimos <- totalPrimos + 1
            FinSi
        FinPara
    FinPara
    Escribir "Cantidad de numeros primos: ", totalPrimos
FinAlgoritmo
