Algoritmo 10_suma_vectores
    Definir A, B, C, i Como Entero
    Dimension A(5)
    Dimension B(5)
    Dimension C(5)
    // Leer el primer vector.
    Para i <- 1 Hasta 5 Hacer
        Escribir "Digite A[", i, "]:"
        Leer A(i)
    FinPara
    // Leer el segundo vector.
    Para i <- 1 Hasta 5 Hacer
        Escribir "Digite B[", i, "]:"
        Leer B(i)
    FinPara
    // Sumar las posiciones correspondientes.
    Para i <- 1 Hasta 5 Hacer
        C(i) <- A(i) + B(i)
    FinPara
    Para i <- 1 Hasta 5 Hacer
        Escribir "C[", i, "] = ", C(i)
    FinPara
FinAlgoritmo
