Algoritmo 02_suma_vector
    Definir v, suma Como Real
    Definir i Como Entero
    Dimension v(6)
    suma <- 0 // Acumulador: comienza en cero.
    Para i <- 1 Hasta 6 Hacer
        Escribir "Digite un numero real:"
        Leer v(i)
        suma <- suma + v(i) // Agregar el dato a la suma.
    FinPara
    Escribir "La suma es: ", suma
FinAlgoritmo
