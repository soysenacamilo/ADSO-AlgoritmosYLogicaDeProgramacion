Algoritmo 03_contar_pares_impares
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir v, i, pares, impares Como Entero
    Dimension v(10)
    pares <- 0
    impares <- 0
    Para i <- 1 Hasta 10 Hacer
        Escribir "Digite un entero:"
        Leer v(i)
        // MOD calcula el residuo; residuo cero significa par.
        Si v(i) MOD 2 = 0 Entonces
            pares <- pares + 1
        SiNo
            impares <- impares + 1
        FinSi
    FinPara
    Escribir "Pares: ", pares
    Escribir "Impares: ", impares
FinAlgoritmo
