# Ejercicio 5: Combinación de O con NO: salir a jugar

**Nivel:** Básico

**Enunciado:** Puedo salir a jugar si NO tengo tarea O si es fin de semana.

**Variables lógicas:** A = tengo_tarea, B = es_fin_de_semana.

**Expresión lógica:** `NO A O B`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (tengo_tarea) | B (es_fin_de_semana) | NO A | NO A O B |
|---|---|---|---|
| F | F | V | V |
| F | V | V | V |
| V | F | F | F |
| V | V | F | V |

## Pseudocódigo

```text
Algoritmo Salir_A_Jugar
    Definir tengo_tarea, es_fin_de_semana, puedo_salir Como Logico

    Escribir "¿Tiene tarea pendiente? (Verdadero/Falso):"
    Leer tengo_tarea
    Escribir "¿Es fin de semana? (Verdadero/Falso):"
    Leer es_fin_de_semana

    puedo_salir <- NO tengo_tarea O es_fin_de_semana

    Si puedo_salir Entonces
        Escribir "Puede salir a jugar."
    SiNo
        Escribir "No puede salir a jugar."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera si no tengo tarea o si es fin de semana, incluso si ambas situaciones ocurren. Solo es Falsa cuando tengo tarea y no es fin de semana.
