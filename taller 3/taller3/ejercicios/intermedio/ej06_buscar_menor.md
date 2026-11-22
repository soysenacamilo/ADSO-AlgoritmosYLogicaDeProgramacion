# Ejercicio 6: Buscar el menor y su posición

**Nivel:** Intermedio

## Enunciado
Leer 8 números enteros en un vector y determinar cuál es el menor y en qué posición se encuentra.

## Análisis
- **Entradas:** 8 números enteros.
- **Proceso:** Suponer que el primer elemento es el menor. Recorrer desde la posición 2 y actualizar el menor y su posición cuando aparezca un valor más pequeño.
- **Salidas:** El número menor y la posición donde aparece por primera vez.

## PSeInt
```pseint
Algoritmo Buscar_Menor
    Definir numeros, i, menor, posicion Como Entero
    Dimension numeros(8)

    Para i <- 1 Hasta 8 Con Paso 1 Hacer
        Escribir "Digite el numero ", i, ":"
        Leer numeros(i)
    FinPara

    menor <- numeros(1)
    posicion <- 1

    Para i <- 2 Hasta 8 Con Paso 1 Hacer
        Si numeros(i) < menor Entonces
            menor <- numeros(i)
            posicion <- i
        FinSi
    FinPara

    Escribir "El menor es: ", menor
    Escribir "Se encuentra en la posicion: ", posicion
FinAlgoritmo
```

## Prueba de escritorio
**Vector:** 8, 4, 9, 2, 6, 5, 7, 3.

El menor valor encontrado es 2 y está en la posición 4.

**Salida:** Menor = 2; posición = 4.
