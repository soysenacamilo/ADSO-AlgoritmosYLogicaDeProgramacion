# Ejercicio 8: Vector de factoriales

**Nivel:** Intermedio

## Enunciado
Leer 5 números enteros en un vector y calcular el factorial de cada uno, almacenándolo en otro vector. Mostrar ambos vectores.

## Análisis
- **Entradas:** 5 números enteros no negativos.
- **Proceso:** Para cada número, iniciar su factorial en 1 y multiplicar desde 1 hasta el número. Guardar el resultado en el segundo vector. El factorial de 0 es 1.
- **Salidas:** Vector original y vector con los factoriales correspondientes.

## PSeInt
```pseint
Algoritmo Vector_Factoriales
    Definir numeros, factoriales, i, j Como Entero
    Dimension numeros(5)
    Dimension factoriales(5)

    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Digite un numero entero no negativo:"
        Leer numeros(i)

        factoriales(i) <- 1
        Para j <- 1 Hasta numeros(i) Con Paso 1 Hacer
            factoriales(i) <- factoriales(i) * j
        FinPara
    FinPara

    Escribir "Numeros originales:"
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir numeros(i)
    FinPara

    Escribir "Factoriales:"
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir factoriales(i)
    FinPara
FinAlgoritmo
```

## Prueba de escritorio
**Vector original:** 0, 1, 3, 4, 5.  
**Factoriales:** 0! = 1, 1! = 1, 3! = 6, 4! = 24, 5! = 120.

**Salida:** Vector original [0, 1, 3, 4, 5]; vector factoriales [1, 1, 6, 24, 120].

**Nota:** Se ingresan valores no negativos. Para números grandes, el resultado puede superar la capacidad del tipo entero.
