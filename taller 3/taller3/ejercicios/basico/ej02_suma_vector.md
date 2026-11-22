# Ejercicio 2: Suma de un vector

**Nivel:** Básico

## Enunciado
Leer 6 números reales en un vector y calcular la suma de todos sus elementos. Mostrar el resultado.

## Análisis
- **Entradas:** 6 números reales.
- **Proceso:** Guardar los valores y acumularlos en la variable suma.
- **Salidas:** La suma de los 6 valores.

## PSeInt
```pseint
Algoritmo Suma_Vector
    Definir numeros, suma Como Real
    Definir i Como Entero
    Dimension numeros(6)
    suma <- 0

    Para i <- 1 Hasta 6 Con Paso 1 Hacer
        Escribir "Digite el numero ", i, ":"
        Leer numeros(i)
        suma <- suma + numeros(i)
    FinPara

    Escribir "La suma es: ", suma
FinAlgoritmo
```

## Prueba de escritorio
| Valores | Operación |
|---|---:|
| 1.5, 2, 3.5, 4, 2, 7 | 1.5 + 2 + 3.5 + 4 + 2 + 7 |

**Salida:** La suma es 20.
