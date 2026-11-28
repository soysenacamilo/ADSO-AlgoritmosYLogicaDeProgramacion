# Ejercicio 9: Validación de un triángulo

**Nivel:** Intermedio

**Enunciado:** Tres lados forman un triángulo si la suma de cada pareja de lados es mayor que el tercer lado.

**Variables lógicas:** A = a + b > c, B = a + c > b, C = b + c > a.

**Expresión lógica:** `A Y B Y C`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (a + b > c) | B (a + c > b) | C (b + c > a) | A Y B | (A Y B) Y C |
|---|---|---|---|---|
| F | F | F | F | F |
| F | F | V | F | F |
| F | V | F | F | F |
| F | V | V | F | F |
| V | F | F | F | F |
| V | F | V | F | F |
| V | V | F | V | F |
| V | V | V | V | V |

## Pseudocódigo

```text
Algoritmo Validar_Triangulo
    Definir a, b, c Como Real
    Definir condicion1, condicion2, condicion3 Como Logico

    Escribir "Digite el primer lado:"
    Leer a
    Escribir "Digite el segundo lado:"
    Leer b
    Escribir "Digite el tercer lado:"
    Leer c

    condicion1 <- (a + b > c)
    condicion2 <- (a + c > b)
    condicion3 <- (b + c > a)

    Si condicion1 Y condicion2 Y condicion3 Entonces
        Escribir "Los lados forman un triángulo."
    SiNo
        Escribir "Los lados no forman un triángulo."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición lógica es Verdadera únicamente cuando las tres desigualdades se cumplen al mismo tiempo. La tabla muestra las ocho combinaciones posibles de los tres resultados; en la aplicación con longitudes reales, los valores de A, B y C dependen de los lados ingresados.
