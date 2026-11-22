Algoritmo 13_buscar_matriz
    Definir matriz, i, j, buscado Como Entero
    Definir encontrado Como Logico
    Dimension matriz(3,3)
    encontrado <- Falso
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            Escribir "Valor [", i, ",", j, "]:"
            Leer matriz(i,j)
        FinPara
    FinPara
    Escribir "Numero que desea buscar:"
    Leer buscado
    // Revisar cada posicion e informar todas las coincidencias.
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            Si matriz(i,j) = buscado Entonces
                Escribir "Encontrado en fila ", i, ", columna ", j
                encontrado <- Verdadero
            FinSi
        FinPara
    FinPara
    Si encontrado = Falso Entonces
        Escribir "El numero no se encuentra."
    FinSi
FinAlgoritmo
