# Taller 5: Pruebas de escritorio

### Ejercicio 4. Contar números pares e impares en un vector

**Entrada de prueba:** `v = [8, 3, 10, 7, 2]`.

#### Pseudocódigo

```text
Algoritmo Contar_Pares_Impares                 // Nombre del algoritmo.
Variables                                        // Declara las variables.
    Entero: v[5], i, pares, impares             // Vector y variables de conteo.
Inicio                                           // Comienza la ejecución.
    Para i = 1 Hasta 5 Hacer                     // Recorre las cinco posiciones.
        Escriba "Digite el número ", i, ":"      // Solicita el dato de la posición i.
        Lea v[i]                                  // Guarda el dato en el vector.
    Fin_Para                                       // Termina la lectura del vector.
    pares = 0                                      // Inicializa el contador de pares.
    impares = 0                                    // Inicializa el contador de impares.
    Para i = 1 Hasta 5 Hacer                       // Recorre el vector para contar.
        Si v[i] mod 2 = 0 Entonces                 // Comprueba si el número es divisible entre 2.
            pares = pares + 1                      // Aumenta el contador de pares.
        Sino                                        // Si el residuo no es cero.
            impares = impares + 1                  // Aumenta el contador de impares.
        Fin_Si                                      // Cierra la condición.
    Fin_Para                                        // Termina el conteo.
    Escriba "Cantidad de pares: ", pares           // Muestra el total de pares.
    Escriba "Cantidad de impares: ", impares        // Muestra el total de impares.
Fin                                               // Termina el algoritmo.
```

#### Tabla de entrada del vector

| Paso | Instrucción | i | v[1] | v[2] | v[3] | v[4] | v[5] | Pantalla |
|---:|---|---:|---:|---:|---:|---:|---:|---|
| 1 | Lee primer valor | 1 | 8 | — | — | — | — | Digite el número 1: |
| 2 | Lee segundo valor | 2 | 8 | 3 | — | — | — | Digite el número 2: |
| 3 | Lee tercer valor | 3 | 8 | 3 | 10 | — | — | Digite el número 3: |
| 4 | Lee cuarto valor | 4 | 8 | 3 | 10 | 7 | — | Digite el número 4: |
| 5 | Lee quinto valor | 5 | 8 | 3 | 10 | 7 | 2 | Digite el número 5: |

#### Tabla de conteo

| Paso | Instrucción / evaluación | i | v[i] | pares | impares | Pantalla |
|---:|---|---:|---:|---:|---:|---|
| 1 | Inicializa contadores | — | — | 0 | 0 | Sin cambios |
| 2 | `8 mod 2 = 0`, par | 1 | 8 | 1 | 0 | Sin cambios |
| 3 | `3 mod 2 ≠ 0`, impar | 2 | 3 | 1 | 1 | Sin cambios |
| 4 | `10 mod 2 = 0`, par | 3 | 10 | 2 | 1 | Sin cambios |
| 5 | `7 mod 2 ≠ 0`, impar | 4 | 7 | 2 | 2 | Sin cambios |
| 6 | `2 mod 2 = 0`, par | 5 | 2 | 3 | 2 | Sin cambios |
| 7 | Muestra pares | 5 | — | 3 | 2 | Cantidad de pares: 3 |
| 8 | Muestra impares | 5 | — | 3 | 2 | Cantidad de impares: 2 |

**Conclusión:** Sí cumple el objetivo. Hay 3 números pares (8, 10 y 2) y 2 números impares (3 y 7).

---
