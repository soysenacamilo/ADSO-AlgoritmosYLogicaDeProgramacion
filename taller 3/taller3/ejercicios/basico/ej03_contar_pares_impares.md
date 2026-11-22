# Ejercicio 3: Contar números pares e impares

**Nivel:** Básico

## Enunciado
Leer 10 números enteros en un vector y contar cuántos son pares y cuántos son impares. Mostrar ambos resultados.

## Análisis
- **Entradas:** 10 números enteros.
- **Proceso:** Guardar cada número. Si el residuo de dividirlo entre 2 es 0, aumentar pares; de lo contrario, aumentar impares.
- **Salidas:** Cantidad de pares y cantidad de impares.

## PSeInt
```pseint
Algoritmo Contar_Pares_Impares
    Definir numeros, i, pares, impares Como Entero
    Dimension numeros(10)
    pares <- 0
    impares <- 0

    Para i <- 1 Hasta 10 Con Paso 1 Hacer
        Escribir "Digite el numero ", i, ":"
        Leer numeros(i)

        Si numeros(i) MOD 2 = 0 Entonces
            pares <- pares + 1
        SiNo
            impares <- impares + 1
        FinSi
    FinPara

    Escribir "Cantidad de pares: ", pares
    Escribir "Cantidad de impares: ", impares
FinAlgoritmo
```

## Prueba de escritorio
**Datos:** 2, 5, 8, 1, 4, 7, 6, 3, 10, 9.

Pares: 2, 8, 4, 6, 10. Impares: 5, 1, 7, 3, 9.

**Salida:** 5 pares y 5 impares.
