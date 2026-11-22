# Ejercicio 13: Buscar un valor en una matriz

**Nivel:** Avanzado

## Enunciado
Leer una matriz de 3x3, luego leer un número adicional y determinar si ese número se encuentra en la matriz y en qué posición (fila, columna).

## Análisis
- **Entradas:** 9 números enteros y el valor que se desea buscar.
- **Proceso:** Recorrer todas las posiciones. Comparar cada elemento con el valor buscado y mostrar cada fila y columna donde coincida. Usar una variable encontrado para saber si apareció.
- **Salidas:** Mensaje indicando si existe y las posiciones donde aparece.

## PSeInt
```pseint
Algoritmo Buscar_En_Matriz
    Definir matriz, i, j, buscado Como Entero
    Definir encontrado Como Logico
    Dimension matriz(3,3)
    encontrado <- Falso

    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir "Digite el valor de la fila ", i, " columna ", j, ":"
            Leer matriz(i,j)
        FinPara
    FinPara

    Escribir "Digite el numero que desea buscar:"
    Leer buscado

    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            Si matriz(i,j) = buscado Entonces
                Escribir "Encontrado en fila ", i, ", columna ", j
                encontrado <- Verdadero
            FinSi
        FinPara
    FinPara

    Si encontrado = Falso Entonces
        Escribir "El numero no se encuentra en la matriz."
    FinSi
FinAlgoritmo
```

## Prueba de escritorio
**Matriz:**
```text
2 5 7
4 5 9
1 3 5
```
**Número buscado:** 5.

**Salida:** Encontrado en (fila 1, columna 2), (fila 2, columna 2) y (fila 3, columna 3).
