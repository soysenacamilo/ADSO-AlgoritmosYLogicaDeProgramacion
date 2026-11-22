Algoritmo 05_orden_inverso
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir v, i Como Entero
    Dimension v(7)
    Para i <- 1 Hasta 7 Hacer
        Escribir "Digite un numero:"
        Leer v(i)
    FinPara
    // El paso -1 hace que i disminuya desde 7 hasta 1.
    Para i <- 7 Hasta 1 Con Paso -1 Hacer
        Escribir v(i)
    FinPara
FinAlgoritmo
