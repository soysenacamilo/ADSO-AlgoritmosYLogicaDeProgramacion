# Ejercicio 1: Llenar y mostrar un vector

**Nivel:** Básico

## Enunciado
Leer 8 números enteros en un vector y mostrarlos en pantalla en el mismo orden en que fueron ingresados.

## Análisis
- **Entradas:** 8 números enteros.
- **Proceso:** Guardar cada número en las posiciones 1 a 8 y luego recorrer el vector para mostrarlo.
- **Salidas:** Los 8 números en el orden de entrada.

## PSeInt
```pseint
Algoritmo Llenar_Mostrar_Vector
    Definir numeros, i Como Entero
    Dimension numeros(8)

    Para i <- 1 Hasta 8 Con Paso 1 Hacer
        Escribir "Digite el numero ", i, ":"
        Leer numeros(i)
    FinPara

    Escribir "Numeros ingresados:"
    Para i <- 1 Hasta 8 Con Paso 1 Hacer
        Escribir numeros(i)
    FinPara
FinAlgoritmo
```

## Prueba de escritorio
| Posición | Valor ingresado |
|---:|---:|
| 1 | 4 |
| 2 | 8 |
| 3 | 2 |
| 4 | 9 |
| 5 | 1 |
| 6 | 7 |
| 7 | 3 |
| 8 | 6 |

**Salida:** 4, 8, 2, 9, 1, 7, 3, 6.
