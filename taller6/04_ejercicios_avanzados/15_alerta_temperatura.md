# Ejercicio 15: Sistema de alerta de temperatura

**Nivel:** Avanzado

**Enunciado:** Se activa una alarma si la temperatura es mayor a 40 °C Y la humedad es mayor al 80 %, O si la temperatura es menor a 0 °C Y hay viento fuerte.

**Variables lógicas:** A = temp_mayor_40, B = humedad_mayor_80, C = temp_menor_0, D = viento_fuerte.

**Expresión lógica:** `(A Y B) O (C Y D)`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (temp_mayor_40) | B (humedad_mayor_80) | C (temp_menor_0) | D (viento_fuerte) | A Y B | C Y D | (A Y B) O (C Y D) |
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
Algoritmo Alerta_Temperatura
    Definir temperatura, humedad Como Real
    Definir viento_fuerte, temp_mayor_40, humedad_mayor_80 Como Logico
    Definir temp_menor_0, activar_alarma Como Logico

    Escribir "Digite la temperatura en grados Celsius:"
    Leer temperatura
    Escribir "Digite la humedad en porcentaje:"
    Leer humedad
    Escribir "¿Hay viento fuerte? (Verdadero/Falso):"
    Leer viento_fuerte

    temp_mayor_40 <- (temperatura > 40)
    humedad_mayor_80 <- (humedad > 80)
    temp_menor_0 <- (temperatura < 0)

    activar_alarma <- (temp_mayor_40 Y humedad_mayor_80) O (temp_menor_0 Y viento_fuerte)

    Si activar_alarma Entonces
        Escribir "ALERTA: condiciones de temperatura extremas."
    SiNo
        Escribir "No se activa la alarma."
    FinSi
FinAlgoritmo
```

## Conclusión

La alarma se activa si se presenta calor superior a 40 °C junto con humedad superior al 80 %, o frío inferior a 0 °C junto con viento fuerte. Si ninguna de las dos combinaciones ocurre, la condición es Falsa.
