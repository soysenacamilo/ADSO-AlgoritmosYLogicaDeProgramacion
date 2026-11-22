# Ejercicio 11: Llenar y mostrar una matriz

**Nivel:** Avanzado

## Enunciado
Leer una matriz de 3x3 (9 números enteros) y mostrarla en pantalla en forma de tabla.

## Análisis
- **Entradas:** 9 números enteros.
- **Proceso:** Usar dos ciclos: el externo recorre las filas y el interno las columnas. Leer y después mostrar cada posición.
- **Salidas:** Matriz organizada en 3 filas y 3 columnas.

## PSeInt
```pseint
Algoritmo Mostrar_Matriz
    Definir matriz, i, j Como Entero
    Dimension matriz(3,3)

    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir "Digite el valor de la fila ", i, " columna ", j, ":"
            Leer matriz(i,j)
        FinPara
    FinPara

    Escribir "Matriz ingresada:"
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir Sin Saltar matriz(i,j), " "
        FinPara
        Escribir ""
    FinPara
FinAlgoritmo
```

## Prueba de escritorio
**Datos ingresados por filas:** 1, 2, 3, 4, 5, 6, 7, 8, 9.

**Salida:**
```text
1 2 3
4 5 6
7 8 9
```
