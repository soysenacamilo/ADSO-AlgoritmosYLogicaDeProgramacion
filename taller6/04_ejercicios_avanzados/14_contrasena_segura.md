# Ejercicio 14: Validación de una contraseña segura

**Nivel:** Avanzado

**Enunciado:** Una contraseña es segura si tiene al menos 8 caracteres, contiene al menos una mayúscula, al menos un número y al menos un carácter especial.

**Variables lógicas:** A = longitud_ok, B = tiene_mayuscula, C = tiene_numero, D = tiene_especial.

**Expresión lógica:** `A Y B Y C Y D`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (longitud_ok) | B (tiene_mayuscula) | C (tiene_numero) | D (tiene_especial) | A Y B | (A Y B) Y C | A Y B Y C Y D |
|---|---|---|---|---|---|---|
| F | F | F | F | F | F | F |
| F | F | F | V | F | F | F |
| F | F | V | F | F | F | F |
| F | F | V | V | F | F | F |
| F | V | F | F | F | F | F |
| F | V | F | V | F | F | F |
| F | V | V | F | F | F | F |
| F | V | V | V | F | F | F |
| V | F | F | F | F | F | F |
| V | F | F | V | F | F | F |
| V | F | V | F | F | F | F |
| V | F | V | V | F | F | F |
| V | V | F | F | V | F | F |
| V | V | F | V | V | F | F |
| V | V | V | F | V | V | F |
| V | V | V | V | V | V | V |

## Pseudocódigo

```text
Algoritmo Validar_Contrasena
    Definir contrasena Como Cadena
    Definir longitud_ok, tiene_mayuscula, tiene_numero, tiene_especial Como Logico
    Definir es_segura Como Logico

    Escribir "Digite la contraseña:"
    Leer contrasena

    longitud_ok <- (Longitud(contrasena) >= 8)
    tiene_mayuscula <- ExisteMayuscula(contrasena)
    tiene_numero <- ExisteNumero(contrasena)
    tiene_especial <- ExisteCaracterEspecial(contrasena)

    es_segura <- longitud_ok Y tiene_mayuscula Y tiene_numero Y tiene_especial

    Si es_segura Entonces
        Escribir "La contraseña es segura."
    SiNo
        Escribir "La contraseña no cumple todos los requisitos."
    FinSi
FinAlgoritmo

// Nota: ExisteMayuscula, ExisteNumero y ExisteCaracterEspecial
// representan funciones auxiliares que deben revisar cada carácter.
```

## Conclusión

La condición es Verdadera únicamente cuando se cumplen los cuatro requisitos simultáneamente. Si falta longitud, mayúscula, número o carácter especial, la contraseña no se considera segura.
