# Ejercicio 2: Operador O: identificar el fin de semana

**Nivel:** Básico

**Enunciado:** Un día es fin de semana si es sábado O es domingo.

**Variables lógicas:** A = dia = sábado, B = dia = domingo.

**Expresión lógica:** `A O B`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (dia = sábado) | B (dia = domingo) | A O B |
|---|---|---|
| F | F | F |
| F | V | V |
| V | F | V |
| V | V | V |

## Pseudocódigo

```text
Algoritmo Es_Fin_De_Semana
    Definir dia Como Cadena
    Definir es_sabado, es_domingo, fin_de_semana Como Logico

    Escribir "Digite el día de la semana:"
    Leer dia

    es_sabado <- (Minusculas(dia) = "sabado")
    es_domingo <- (Minusculas(dia) = "domingo")
    fin_de_semana <- es_sabado O es_domingo

    Si fin_de_semana Entonces
        Escribir "Es fin de semana."
    SiNo
        Escribir "No es fin de semana."
    FinSi
FinAlgoritmo
```

## Conclusión

La expresión es Verdadera cuando al menos una de las condiciones se cumple: el día es sábado o el día es domingo. En los días restantes es Falsa. En el uso real, sábado y domingo no pueden ser el mismo día.
