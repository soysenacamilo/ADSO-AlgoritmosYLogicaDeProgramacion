# Ejercicio 7: Contar un valor específico

**Nivel:** Intermedio

## Enunciado
Leer 10 números enteros en un vector, luego leer un número adicional y determinar cuántas veces aparece ese número en el vector.

## Análisis
- **Entradas:** 10 números enteros y un número que se desea buscar.
- **Proceso:** Recorrer el vector y aumentar contador cada vez que un elemento sea igual al número buscado.
- **Salidas:** Cantidad de apariciones del número buscado.

## PSeInt
```pseint
Algoritmo Contar_Valor
    Definir numeros, i, buscado, contador Como Entero
    Dimension numeros(10)
    contador <- 0

    Para i <- 1 Hasta 10 Con Paso 1 Hacer
        Escribir "Digite el numero ", i, ":"
        Leer numeros(i)
    FinPara

    Escribir "Digite el numero que desea buscar:"
    Leer buscado

    Para i <- 1 Hasta 10 Con Paso 1 Hacer
        Si numeros(i) = buscado Entonces
            contador <- contador + 1
        FinSi
    FinPara

    Escribir "El numero aparece ", contador, " veces."
FinAlgoritmo
```

## Prueba de escritorio
**Vector:** 4, 2, 4, 7, 4, 1, 8, 4, 3, 5.  
**Número buscado:** 4.

Aparece en las posiciones 1, 3, 5 y 8.

**Salida:** El número aparece 4 veces.
