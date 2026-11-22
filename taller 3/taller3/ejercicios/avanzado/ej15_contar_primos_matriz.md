# Ejercicio 15: Contar números primos en una matriz

**Nivel:** Avanzado

## Enunciado
Leer una matriz de 4x4 y contar cuántos de sus elementos son números primos. Mostrar el total.

## Análisis
- **Entradas:** 16 números enteros.
- **Proceso:** Recorrer la matriz. Un número menor que 2 no es primo. Para cada número mayor o igual que 2, probar divisores desde 2 hasta el número menos 1. Si ninguno lo divide exactamente, contarlo como primo.
- **Salidas:** Cantidad total de números primos en la matriz.

## PSeInt
```pseint
Algoritmo Contar_Primos_Matriz
    Definir matriz, i, j, divisor, contador Como Entero
    Definir esPrimo Como Logico
    Dimension matriz(4,4)
    contador <- 0

    Para i <- 1 Hasta 4 Con Paso 1 Hacer
        Para j <- 1 Hasta 4 Con Paso 1 Hacer
            Escribir "Digite el valor de la fila ", i, " columna ", j, ":"
            Leer matriz(i,j)
        FinPara
    FinPara

    Para i <- 1 Hasta 4 Con Paso 1 Hacer
        Para j <- 1 Hasta 4 Con Paso 1 Hacer
            Si matriz(i,j) >= 2 Entonces
                esPrimo <- Verdadero
                Para divisor <- 2 Hasta matriz(i,j) - 1 Con Paso 1 Hacer
                    Si matriz(i,j) MOD divisor = 0 Entonces
                        esPrimo <- Falso
                    FinSi
                FinPara

                Si esPrimo = Verdadero Entonces
                    contador <- contador + 1
                FinSi
            FinSi
        FinPara
    FinPara

    Escribir "Cantidad de numeros primos: ", contador
FinAlgoritmo
```

## Prueba de escritorio
**Matriz de prueba:**
```text
2  4  5  8
7  9 11 12
1 13 15 17
6 19 20 23
```
Los primos son 2, 5, 7, 11, 13, 17, 19 y 23.

**Salida:** Cantidad de números primos = 8.
