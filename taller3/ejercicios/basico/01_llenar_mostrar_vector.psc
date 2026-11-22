Algoritmo 01_llenar_mostrar_vector
    Definir v, i Como Entero
    Dimension v(8)
    // Guardar los ocho numeros ingresados.
    Para i <- 1 Hasta 8 Hacer
        Escribir "Digite el numero ", i, ":"
        Leer v(i)
    FinPara
    // Mostrar los datos conservando el orden de entrada.
    Escribir "Numeros ingresados:"
    Para i <- 1 Hasta 8 Hacer
        Escribir v(i)
    FinPara
FinAlgoritmo
