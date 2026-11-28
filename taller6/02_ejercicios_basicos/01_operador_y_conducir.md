# Ejercicio 1: Operador Y: condiciones para conducir

**Nivel:** Básico

**Enunciado:** Una persona puede conducir si tiene 18 años o más Y tiene licencia de conducción.

**Variables lógicas:** A = edad >= 18, B = tiene_licencia.

**Expresión lógica:** `A Y B`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (edad >= 18) | B (tiene_licencia) | A Y B |
|---|---|---|
| F | F | F |
| F | V | F |
| V | F | F |
| V | V | V |

## Pseudocódigo

```text
Algoritmo Puede_Conducir
    Definir edad Como Entero
    Definir tiene_licencia, puede_conducir Como Logico

    Escribir "Digite su edad:"
    Leer edad
    Escribir "¿Tiene licencia? (Verdadero/Falso):"
    Leer tiene_licencia

    puede_conducir <- (edad >= 18) Y tiene_licencia

    Si puede_conducir Entonces
        Escribir "Puede conducir."
    SiNo
        Escribir "No puede conducir."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera únicamente cuando la persona tiene 18 años o más y además posee licencia. Si una de las dos condiciones es Falsa, el resultado es Falso.
