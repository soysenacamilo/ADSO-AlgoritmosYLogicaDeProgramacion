# Taller 5: Pruebas de escritorio

### Ejercicio 3. Suma de los primeros N números

**Entrada de prueba:** `n = 5`  
**Resultado esperado:** 1 + 2 + 3 + 4 + 5 = 15.

#### Pseudocódigo

```text
Algoritmo Suma_N_Numeros                       // Identifica el algoritmo.
Variables                                        // Declara las variables.
    Entero: n, i, suma                          // n es el límite, i el contador y suma el acumulador.
Inicio                                           // Comienza la ejecución.
    Escriba "Digite un número entero positivo:" // Solicita el valor de n.
    Lea n                                        // Lee el número ingresado.
    suma = 0                                     // Inicializa el acumulador en cero.
    Para i = 1 Hasta n Hacer                     // Recorre desde 1 hasta n.
        suma = suma + i                           // Agrega el valor de i a la suma.
    Fin_Para                                       // Termina el ciclo.
    Escriba "La suma de 1 a ", n, " es: ", suma  // Muestra el resultado.
Fin                                              // Termina el algoritmo.
```

#### Tabla de memoria y pantalla

| Paso | Instrucción / evaluación | n | i | suma | Pantalla |
|---:|---|---:|---:|---:|---|
| 1 | Inicio | — | — | — | Vacía |
| 2 | Escribe solicitud | — | — | — | Digite un número entero positivo: |
| 3 | Lea n | 5 | — | — | Digite un número entero positivo: |
| 4 | `suma = 0` | 5 | — | 0 | Sin cambios |
| 5 | `i = 1`; suma = 0 + 1 | 5 | 1 | 1 | Sin cambios |
| 6 | `i = 2`; suma = 1 + 2 | 5 | 2 | 3 | Sin cambios |
| 7 | `i = 3`; suma = 3 + 3 | 5 | 3 | 6 | Sin cambios |
| 8 | `i = 4`; suma = 6 + 4 | 5 | 4 | 10 | Sin cambios |
| 9 | `i = 5`; suma = 10 + 5 | 5 | 5 | 15 | Sin cambios |
| 10 | Termina el ciclo | 5 | 5 | 15 | Sin cambios |
| 11 | Escribe resultado | 5 | 5 | 15 | La suma de 1 a 5 es: 15 |
| 12 | Fin | 5 | 5 | 15 | La suma de 1 a 5 es: 15 |

**¿Qué pasa si `n = 1`?** El ciclo se ejecuta una sola vez: `suma = 0 + 1 = 1`. La pantalla muestra: `La suma de 1 a 1 es: 1`.

**Conclusión:** Sí cumple el objetivo. Para `n = 5` obtiene 15, y para `n = 1` obtiene 1, porque suma los números desde 1 hasta el límite indicado.

---
