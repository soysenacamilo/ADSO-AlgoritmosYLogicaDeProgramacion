# Taller 5: Pruebas de escritorio

### Ejercicio 2. Determinar el mayor de dos números

Se realizan las dos pruebas solicitadas.

#### Pseudocódigo

```text
Algoritmo Mayor_Dos_Numeros                   // Nombre del algoritmo.
Variables                                        // Declara las variables.
    Entero: a, b                                // Guarda los dos números enteros.
Inicio                                           // Comienza la ejecución.
    Escriba "Digite el primer número:"          // Solicita el primer número.
    Lea a                                        // Lee el primer número.
    Escriba "Digite el segundo número:"         // Solicita el segundo número.
    Lea b                                        // Lee el segundo número.
    Si a > b Entonces                            // Comprueba si a es mayor que b.
        Escriba "El mayor es: ", a               // Muestra a si la condición es verdadera.
    Sino                                         // Se ejecuta si a no es mayor que b.
        Escriba "El mayor es: ", b               // Muestra b.
    Fin_Si                                       // Cierra la condición.
Fin                                              // Termina el algoritmo.
```

#### Caso 1: `a = 10`, `b = 7`

| Paso | Instrucción / evaluación | a | b | Pantalla |
|---:|---|---:|---:|---|
| 1 | Inicio | — | — | Vacía |
| 2 | Solicita primer número | — | — | Digite el primer número: |
| 3 | Lea a | 10 | — | Digite el primer número: |
| 4 | Solicita segundo número | 10 | — | Digite el segundo número: |
| 5 | Lea b | 10 | 7 | Digite el segundo número: |
| 6 | Evalúa `10 > 7` | 10 | 7 | Condición verdadera |
| 7 | Escribe a | 10 | 7 | El mayor es: 10 |
| 8 | Fin | 10 | 7 | El mayor es: 10 |

**Conclusión del caso 1:** Sí, muestra 10, que es el mayor.

#### Caso 2: `a = 3`, `b = 12`

| Paso | Instrucción / evaluación | a | b | Pantalla |
|---:|---|---:|---:|---|
| 1 | Inicio | — | — | Vacía |
| 2 | Solicita primer número | — | — | Digite el primer número: |
| 3 | Lea a | 3 | — | Digite el primer número: |
| 4 | Solicita segundo número | 3 | — | Digite el segundo número: |
| 5 | Lea b | 3 | 12 | Digite el segundo número: |
| 6 | Evalúa `3 > 12` | 3 | 12 | Condición falsa |
| 7 | Ejecuta Sino y escribe b | 3 | 12 | El mayor es: 12 |
| 8 | Fin | 3 | 12 | El mayor es: 12 |

**Conclusión del caso 2:** Sí, muestra 12, que es el mayor.

**¿Qué pasa si `a = b`?** La condición `a > b` es falsa y se ejecuta `Sino`, por lo que se muestra `b`. El valor mostrado sigue siendo el mayor porque ambos son iguales, pero el algoritmo no informa que existe un empate.

---
