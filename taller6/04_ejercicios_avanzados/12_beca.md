# Ejercicio 12: Elegibilidad para una beca

**Nivel:** Avanzado

**Enunciado:** Un estudiante es elegible si tiene promedio mayor o igual a 8.5 y no tiene materias reprobadas, O si tiene promedio mayor o igual a 9.0 y al menos dos publicaciones.

**Variables lógicas:** A = promedio_ge_8_5, B = sin_reprobadas, C = promedio_ge_9_0, D = tiene_publicaciones.

**Expresión lógica:** `(A Y B) O (C Y D)`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (promedio_ge_8_5) | B (sin_reprobadas) | C (promedio_ge_9_0) | D (tiene_publicaciones) | A Y B | C Y D | (A Y B) O (C Y D) |
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
Algoritmo Elegibilidad_Beca
    Definir promedio Como Real
    Definir materias_reprobadas, cantidad_publicaciones Como Entero
    Definir promedio_ge_8_5, sin_reprobadas, promedio_ge_9_0 Como Logico
    Definir tiene_publicaciones, es_elegible Como Logico

    Escribir "Digite el promedio:"
    Leer promedio
    Escribir "Digite la cantidad de materias reprobadas:"
    Leer materias_reprobadas
    Escribir "Digite la cantidad de publicaciones:"
    Leer cantidad_publicaciones

    promedio_ge_8_5 <- (promedio >= 8.5)
    sin_reprobadas <- (materias_reprobadas = 0)
    promedio_ge_9_0 <- (promedio >= 9.0)
    tiene_publicaciones <- (cantidad_publicaciones >= 2)

    es_elegible <- (promedio_ge_8_5 Y sin_reprobadas) O (promedio_ge_9_0 Y tiene_publicaciones)

    Si es_elegible Entonces
        Escribir "El estudiante es elegible para la beca."
    SiNo
        Escribir "El estudiante no es elegible para la beca."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera si se cumple la primera alternativa (promedio de al menos 8.5 y ninguna materia reprobada) o la segunda (promedio de al menos 9.0 y dos o más publicaciones). También es Verdadera si ambas alternativas se cumplen.
