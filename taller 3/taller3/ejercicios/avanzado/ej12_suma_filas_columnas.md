# Ejercicio 12: Suma de filas y columnas

**Nivel:** Avanzado

## Enunciado
Leer una matriz de 4x4 y calcular la suma de cada fila y la suma de cada columna. Mostrar los resultados.

## Análisis
- **Entradas:** 16 números enteros.
- **Proceso:** Para cada fila, sumar sus cuatro columnas. Después, para cada columna, sumar sus cuatro filas.
- **Salidas:** Cuatro sumas de filas y cuatro sumas de columnas.

## PSeInt
```pseint
Algoritmo Suma_Filas_Columnas
    Definir matriz, i, j, suma Como Entero
    Dimension matriz(4,4)

    Para i <- 1 Hasta 4 Con Paso 1 Hacer
        Para j <- 1 Hasta 4 Con Paso 1 Hacer
            Escribir "Digite el valor de la fila ", i, " columna ", j, ":"
            Leer matriz(i,j)
        FinPara
    FinPara

    Para i <- 1 Hasta 4 Con Paso 1 Hacer
        suma <- 0
        Para j <- 1 Hasta 4 Con Paso 1 Hacer
            suma <- suma + matriz(i,j)
        FinPara
        Escribir "Suma de la fila ", i, ": ", suma
    FinPara

    Para j <- 1 Hasta 4 Con Paso 1 Hacer
        suma <- 0
        Para i <- 1 Hasta 4 Con Paso 1 Hacer
            suma <- suma + matriz(i,j)
        FinPara
        Escribir "Suma de la columna ", j, ": ", suma
    FinPara
FinAlgoritmo
```

## Prueba de escritorio
**Matriz de prueba:**
```text
1  2  3  4
5  6  7  8
9 10 11 12
13 14 15 16
```
**Sumas de filas:** 10, 26, 42, 58.  
**Sumas de columnas:** 28, 32, 36, 40.
