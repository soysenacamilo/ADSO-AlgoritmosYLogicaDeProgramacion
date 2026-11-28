# Ejercicio 3: Operador NO: salir sin paraguas

**Nivel:** Básico

**Enunciado:** Se puede salir sin paraguas cuando NO está lloviendo.

**Variables lógicas:** A = esta_lloviendo.

**Expresión lógica:** `NO A`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (esta_lloviendo) | NO A |
|---|---|
| F | V |
| V | F |

## Pseudocódigo

```text
Algoritmo Salir_Sin_Paraguas
    Definir esta_lloviendo, salir_sin_paraguas Como Logico

    Escribir "¿Está lloviendo? (Verdadero/Falso):"
    Leer esta_lloviendo

    salir_sin_paraguas <- NO esta_lloviendo

    Si salir_sin_paraguas Entonces
        Escribir "Puede salir sin paraguas."
    SiNo
        Escribir "Es mejor llevar paraguas."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera cuando esta_lloviendo es Falso. El operador NO invierte el valor lógico de la condición.
