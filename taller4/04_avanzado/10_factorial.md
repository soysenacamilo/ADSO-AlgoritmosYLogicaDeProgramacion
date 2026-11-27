# Ejercicio 10. Calcular el factorial de un número

**Tipos de datos y justificación**

- `n`: Entero, porque el factorial se calcula para un número entero no negativo.
- `i`: Entero, porque funciona como contador del ciclo.
- `factorial`: Entero, porque el resultado es un número entero.

Para números pequeños, un entero puede ser suficiente. Sin embargo, el factorial crece muy rápido: por ejemplo, `13!` ya supera el límite de un entero con signo de 32 bits. Para valores grandes se recomienda un tipo entero de precisión arbitraria o una biblioteca de números grandes. Usar Real no garantiza evitar el desbordamiento ni conservar todos los dígitos exactos.

**Pseudocódigo**

```text
// Identifica el nombre del algoritmo.
Algoritmo Calcular_Factorial
// Declara las variables que se utilizarán.
Variables
    // Indica el tipo de dato de las variables.
    Entero: n, i, factorial
// Comienza la ejecución del algoritmo.
Inicio
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Digite un entero entre 0 y 12:"
    // Recibe el dato ingresado por el usuario.
    Lea n

    // Comprueba la condición antes de decidir qué camino seguir.
    Si n >= 0 Y n <= 12 Entonces
        // Inicializa el acumulador en 1.
        factorial = 1

        // Repite las instrucciones para cada valor del contador.
        Para i = 1 Hasta n Haga
            // Calcula y guarda el valor de la expresión.
            factorial = factorial * i
        // Cierra el ciclo.
        Fin_Para

        // Muestra un mensaje o el resultado en pantalla.
        Escriba "El factorial de ", n, " es: ", factorial
    // Indica qué hacer cuando la condición anterior es falsa.
    Sino
        // Muestra un mensaje o el resultado en pantalla.
        Escriba "Número inválido. Ingrese un entero entre 0 y 12."
    // Cierra la estructura condicional.
    Fin_Si
// Finaliza el algoritmo.
Fin
```

**Prueba de escritorio**

Para `n = 5`:

| i | factorial antes | Operación | factorial después |
|---:|---:|---|---:|
| Inicial | - | Se asigna 1 | 1 |
| 1 | 1 | 1 × 1 | 1 |
| 2 | 1 | 1 × 2 | 2 |
| 3 | 2 | 2 × 3 | 6 |
| 4 | 6 | 6 × 4 | 24 |
| 5 | 24 | 24 × 5 | 120 |

**Resultado:** `5! = 120`. También se obtiene `0! = 1`, porque el ciclo no se ejecuta y el factorial permanece inicializado en 1.

---
