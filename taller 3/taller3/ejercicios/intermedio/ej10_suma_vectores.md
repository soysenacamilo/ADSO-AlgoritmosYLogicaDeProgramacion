# Ejercicio 10: Suma de dos vectores

**Nivel:** Intermedio

## Enunciado
Leer dos vectores de 5 elementos cada uno y crear un tercer vector que contenga la suma de los elementos correspondientes. Mostrar el vector resultante.

## Análisis
- **Entradas:** 5 números para el primer vector y 5 para el segundo.
- **Proceso:** Leer ambos vectores. Sumar las posiciones equivalentes y guardar cada resultado en el tercer vector.
- **Salidas:** El tercer vector con las sumas.

## PSeInt
```pseint
Algoritmo Suma_Vectores
    Definir vectorA, vectorB, resultado, i Como Entero
    Dimension vectorA(5)
    Dimension vectorB(5)
    Dimension resultado(5)

    Escribir "Ingrese los datos del primer vector:"
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Leer vectorA(i)
    FinPara

    Escribir "Ingrese los datos del segundo vector:"
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Leer vectorB(i)
    FinPara

    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        resultado(i) <- vectorA(i) + vectorB(i)
    FinPara

    Escribir "Vector resultante:"
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir resultado(i)
    FinPara
FinAlgoritmo
```

## Prueba de escritorio
**Vector A:** 1, 2, 3, 4, 5.  
**Vector B:** 5, 4, 3, 2, 1.

Sumas por posición: 1+5=6, 2+4=6, 3+3=6, 4+2=6, 5+1=6.

**Salida:** [6, 6, 6, 6, 6].
