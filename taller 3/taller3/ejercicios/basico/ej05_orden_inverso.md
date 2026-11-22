# Ejercicio 5: Mostrar en orden inverso

**Nivel:** Básico

## Enunciado
Leer 7 números enteros en un vector y mostrarlos en pantalla en orden inverso, del último al primero.

## Análisis
- **Entradas:** 7 números enteros.
- **Proceso:** Guardar los números desde la posición 1 hasta la 7. Recorrer después desde 7 hasta 1 usando paso -1.
- **Salidas:** Los números desde el último hasta el primero.

## PSeInt
```pseint
Algoritmo Orden_Inverso
    Definir numeros, i Como Entero
    Dimension numeros(7)

    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "Digite el numero ", i, ":"
        Leer numeros(i)
    FinPara

    Escribir "Numeros en orden inverso:"
    Para i <- 7 Hasta 1 Con Paso -1 Hacer
        Escribir numeros(i)
    FinPara
FinAlgoritmo
```

## Prueba de escritorio
**Vector ingresado:** 3, 6, 9, 2, 5, 8, 1.

**Salida:** 1, 8, 5, 2, 9, 6, 3.
