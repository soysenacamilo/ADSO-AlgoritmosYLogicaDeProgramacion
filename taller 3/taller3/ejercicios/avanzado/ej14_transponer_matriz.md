# Ejercicio 14: Transponer una matriz

**Nivel:** Avanzado

## Enunciado
Leer una matriz de 3x3 y crear su matriz transpuesta, intercambiando filas por columnas. Mostrar ambas matrices.

## Análisis
- **Entradas:** 9 números enteros.
- **Proceso:** Leer la matriz original. Copiar cada elemento de la posición (i,j) a la posición (j,i) de la matriz transpuesta.
- **Salidas:** Matriz original y matriz transpuesta.

## PSeInt
```pseint
Algoritmo Transponer_Matriz
    Definir matriz, transpuesta, i, j Como Entero
    Dimension matriz(3,3)
    Dimension transpuesta(3,3)

    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir "Digite el valor de la fila ", i, " columna ", j, ":"
            Leer matriz(i,j)
        FinPara
    FinPara

    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            transpuesta(j,i) <- matriz(i,j)
        FinPara
    FinPara

    Escribir "Matriz original:"
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir Sin Saltar matriz(i,j), " "
        FinPara
        Escribir ""
    FinPara

    Escribir "Matriz transpuesta:"
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir Sin Saltar transpuesta(i,j), " "
        FinPara
        Escribir ""
    FinPara
FinAlgoritmo
```

## Prueba de escritorio
**Matriz original:**
```text
1 2 3
4 5 6
7 8 9
```
**Matriz transpuesta:**
```text
1 4 7
2 5 8
3 6 9
```
