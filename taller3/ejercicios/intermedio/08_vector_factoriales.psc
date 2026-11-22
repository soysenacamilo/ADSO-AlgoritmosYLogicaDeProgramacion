Algoritmo 08_vector_factoriales
    Definir v, i, j Como Entero
    Definir factoriales, factorial Como Real
    Dimension v(5)
    Dimension factoriales(5)
    Para i <- 1 Hasta 5 Hacer
        Escribir "Digite un entero no negativo:"
        Leer v(i)
        // Validar que el factorial no se calcule con negativos.
        Mientras v(i) < 0 Hacer
            Escribir "Debe ser cero o positivo. Intente otra vez:"
            Leer v(i)
        FinMientras
    FinPara
    Para i <- 1 Hasta 5 Hacer
        factorial <- 1 // 0! y 1! son iguales a 1.
        Para j <- 1 Hasta v(i) Hacer
            factorial <- factorial * j
        FinPara
        factoriales(i) <- factorial
    FinPara
    // Mostrar el dato original y su factorial.
    Para i <- 1 Hasta 5 Hacer
        Escribir v(i), "! = ", factoriales(i)
    FinPara
FinAlgoritmo
