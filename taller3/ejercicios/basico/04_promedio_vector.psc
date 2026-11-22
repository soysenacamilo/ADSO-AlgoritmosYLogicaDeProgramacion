Algoritmo 04_promedio_vector
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir notas, suma, promedio Como Real
    Definir i Como Entero
    Dimension notas(5)
    suma <- 0
    Para i <- 1 Hasta 5 Hacer
        Escribir "Digite la nota:"
        Leer notas(i)
        suma <- suma + notas(i)
    FinPara
    // El promedio es la suma dividida entre cinco notas.
    promedio <- suma / 5
    Escribir "Promedio: ", promedio
FinAlgoritmo
