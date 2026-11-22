# Ejercicio 9: Invertir un vector

**Nivel:** Intermedio

## Enunciado
Leer 6 números enteros en un vector y crear un nuevo vector con los elementos en orden inverso. Mostrar ambos vectores.

## Análisis
- **Entradas:** 6 números enteros.
- **Proceso:** Guardar el vector original. Para cada posición i del nuevo vector, copiar el elemento de la posición 7-i del original.
- **Salidas:** Vector original y vector invertido.

## PSeInt
```pseint
Algoritmo Invertir_Vector
    Definir original, invertido, i Como Entero
    Dimension original(6)
    Dimension invertido(6)

    Para i <- 1 Hasta 6 Con Paso 1 Hacer
        Escribir "Digite el numero ", i, ":"
        Leer original(i)
    FinPara

    Para i <- 1 Hasta 6 Con Paso 1 Hacer
        invertido(i) <- original(7 - i)
    FinPara

    Escribir "Vector original:"
    Para i <- 1 Hasta 6 Con Paso 1 Hacer
        Escribir original(i)
    FinPara

    Escribir "Vector invertido:"
    Para i <- 1 Hasta 6 Con Paso 1 Hacer
        Escribir invertido(i)
    FinPara
FinAlgoritmo
```

## Prueba de escritorio
**Vector original:** 10, 20, 30, 40, 50, 60.

El nuevo vector toma las posiciones 6, 5, 4, 3, 2 y 1 del original.

**Salida:** Original [10, 20, 30, 40, 50, 60]; invertido [60, 50, 40, 30, 20, 10].
