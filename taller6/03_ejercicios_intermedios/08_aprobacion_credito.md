# Ejercicio 8: Aprobación de un crédito

**Nivel:** Intermedio

**Enunciado:** Un crédito se aprueba si el solicitante tiene ingresos mayores a $1000 Y no tiene deudas, O si tiene un fiador.

**Variables lógicas:** A = ingresos_mayores_1000, B = sin_deudas, C = tiene_fiador.

**Expresión lógica:** `(A Y B) O C`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (ingresos_mayores_1000) | B (sin_deudas) | C (tiene_fiador) | A Y B | (A Y B) O C |
|---|---|---|---|---|
| F | F | F | F | F |
| F | F | V | F | V |
| F | V | F | F | F |
| F | V | V | F | V |
| V | F | F | F | F |
| V | F | V | F | V |
| V | V | F | V | V |
| V | V | V | V | V |

## Pseudocódigo

```text
Algoritmo Aprobar_Credito
    Definir ingresos Como Real
    Definir sin_deudas, tiene_fiador, credito_aprobado Como Logico

    Escribir "Digite los ingresos del solicitante:"
    Leer ingresos
    Escribir "¿No tiene deudas? (Verdadero/Falso):"
    Leer sin_deudas
    Escribir "¿Tiene fiador? (Verdadero/Falso):"
    Leer tiene_fiador

    credito_aprobado <- (ingresos > 1000 Y sin_deudas) O tiene_fiador

    Si credito_aprobado Entonces
        Escribir "Crédito aprobado."
    SiNo
        Escribir "Crédito no aprobado."
    FinSi
FinAlgoritmo
```

## Conclusión

El crédito se aprueba si los ingresos superan $1000 y el solicitante no tiene deudas, o si cuenta con un fiador. La presencia de un fiador hace verdadera la expresión aunque las otras dos condiciones sean falsas.
