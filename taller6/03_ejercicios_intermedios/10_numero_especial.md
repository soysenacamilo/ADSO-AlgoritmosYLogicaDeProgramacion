# Ejercicio 10: Clasificación de un número

**Nivel:** Intermedio

**Enunciado:** Un número es especial si es positivo Y es par, O si es negativo Y es impar.

**Variables lógicas:** A = es_positivo, B = es_par, C = es_negativo, D = es_impar.

**Expresión lógica:** `(A Y B) O (C Y D)`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (es_positivo) | B (es_par) | C (es_negativo) | D (es_impar) | A Y B | C Y D | (A Y B) O (C Y D) |
|---|---|---|---|---|---|---|
| F | F | F | F | F | F | F |
| F | F | F | V | F | F | F |
| F | F | V | F | F | F | F |
| F | F | V | V | F | V | V |
| F | V | F | F | F | F | F |
| F | V | F | V | F | F | F |
| F | V | V | F | F | F | F |
| F | V | V | V | F | V | V |
| V | F | F | F | F | F | F |
| V | F | F | V | F | F | F |
| V | F | V | F | F | F | F |
| V | F | V | V | F | V | V |
| V | V | F | F | V | F | V |
| V | V | F | V | V | F | V |
| V | V | V | F | V | F | V |
| V | V | V | V | V | V | V |

## Pseudocódigo

```text
Algoritmo Numero_Especial
    Definir numero Como Entero
    Definir es_positivo, es_par, es_negativo, es_impar Como Logico
    Definir es_especial Como Logico

    Escribir "Digite un número entero:"
    Leer numero

    es_positivo <- (numero > 0)
    es_par <- (numero MOD 2 = 0)
    es_negativo <- (numero < 0)
    es_impar <- (numero MOD 2 <> 0)

    es_especial <- (es_positivo Y es_par) O (es_negativo Y es_impar)

    Si es_especial Entonces
        Escribir "El número es especial."
    SiNo
        Escribir "El número no es especial."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera cuando el número es positivo y par, o cuando es negativo e impar. El cero no cumple ninguna de las dos alternativas.
