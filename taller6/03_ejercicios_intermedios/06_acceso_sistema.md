# Ejercicio 6: Acceso a un sistema

**Nivel:** Intermedio

**Enunciado:** Un usuario puede acceder si su contraseña es correcta Y su cuenta NO está bloqueada.

**Variables lógicas:** A = password_correcta, B = cuenta_bloqueada.

**Expresión lógica:** `A Y NO B`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (password_correcta) | B (cuenta_bloqueada) | NO B | A Y NO B |
|---|---|---|---|
| F | F | V | F |
| F | V | F | F |
| V | F | V | V |
| V | V | F | F |

## Pseudocódigo

```text
Algoritmo Acceso_Sistema
    Definir password_correcta, cuenta_bloqueada, puede_acceder Como Logico

    Escribir "¿La contraseña es correcta? (Verdadero/Falso):"
    Leer password_correcta
    Escribir "¿La cuenta está bloqueada? (Verdadero/Falso):"
    Leer cuenta_bloqueada

    puede_acceder <- password_correcta Y NO cuenta_bloqueada

    Si puede_acceder Entonces
        Escribir "Acceso permitido."
    SiNo
        Escribir "Acceso denegado."
    FinSi
FinAlgoritmo
```

## Conclusión

El acceso es permitido únicamente si la contraseña es correcta y la cuenta no está bloqueada. Una contraseña incorrecta o una cuenta bloqueada hacen que la condición sea Falsa.
