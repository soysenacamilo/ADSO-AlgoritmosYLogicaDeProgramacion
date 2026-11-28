# Ejercicio 13: Control de acceso a una sala VIP

**Nivel:** Avanzado

**Enunciado:** Una persona puede entrar si tiene invitación Y es mayor de edad, O si es socio del club Y no está acompañado de menores.

**Variables lógicas:** A = tiene_invitacion, B = es_mayor, C = es_socio, D = acompanado_menores.

**Expresión lógica:** `(A Y B) O (C Y NO D)`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (tiene_invitacion) | B (es_mayor) | C (es_socio) | D (acompanado_menores) | A Y B | NO D | C Y NO D | Resultado final |
|---|---|---|---|---|---|---|---|
| F | F | F | F | F | V | F | F |
| F | F | F | V | F | F | F | F |
| F | F | V | F | F | V | V | V |
| F | F | V | V | F | F | F | F |
| F | V | F | F | F | V | F | F |
| F | V | F | V | F | F | F | F |
| F | V | V | F | F | V | V | V |
| F | V | V | V | F | F | F | F |
| V | F | F | F | F | V | F | F |
| V | F | F | V | F | F | F | F |
| V | F | V | F | F | V | V | V |
| V | F | V | V | F | F | F | F |
| V | V | F | F | V | V | F | V |
| V | V | F | V | V | F | F | V |
| V | V | V | F | V | V | V | V |
| V | V | V | V | V | F | F | V |

## Pseudocódigo

```text
Algoritmo Acceso_Sala_VIP
    Definir tiene_invitacion, es_mayor, es_socio Como Logico
    Definir acompanado_menores, puede_entrar Como Logico

    Escribir "¿Tiene invitación? (Verdadero/Falso):"
    Leer tiene_invitacion
    Escribir "¿Es mayor de edad? (Verdadero/Falso):"
    Leer es_mayor
    Escribir "¿Es socio del club? (Verdadero/Falso):"
    Leer es_socio
    Escribir "¿Está acompañado de menores? (Verdadero/Falso):"
    Leer acompanado_menores

    puede_entrar <- (tiene_invitacion Y es_mayor) O (es_socio Y NO acompanado_menores)

    Si puede_entrar Entonces
        Escribir "Puede entrar a la sala VIP."
    SiNo
        Escribir "No puede entrar a la sala VIP."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera si tiene invitación y es mayor de edad, o si es socio y no está acompañado de menores. Cualquiera de las dos alternativas permite el ingreso.
