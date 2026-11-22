# Ejercicio 4: Promedio de un vector

**Nivel:** Básico

## Enunciado
Leer 5 notas reales en un vector y calcular su promedio. Mostrar el promedio.

## Análisis
- **Entradas:** 5 notas reales.
- **Proceso:** Guardar las notas, sumarlas y dividir la suma entre 5.
- **Salidas:** Promedio de las cinco notas.

## PSeInt
```pseint
Algoritmo Promedio_Vector
    Definir notas, suma, promedio Como Real
    Definir i Como Entero
    Dimension notas(5)
    suma <- 0

    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Digite la nota ", i, ":"
        Leer notas(i)
        suma <- suma + notas(i)
    FinPara

    promedio <- suma / 5
    Escribir "El promedio es: ", promedio
FinAlgoritmo
```

## Prueba de escritorio
**Datos:** 4.0, 3.5, 4.5, 5.0, 3.0.

Suma = 20.0. Promedio = 20.0 / 5.

**Salida:** El promedio es 4.0.
