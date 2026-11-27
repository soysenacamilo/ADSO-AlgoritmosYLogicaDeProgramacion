# Ejercicio 7. Diferencia entre aritmética entera y real

**Tipos de datos y justificación**

- `a`: Entero, porque representa el resultado entero de la división según el modelo del taller.
- `b`: Real, porque conserva la parte decimal de la división.

**Pseudocódigo**

```text
// Identifica el nombre del algoritmo.
Algoritmo Division_Entera_Real
// Declara las variables que se utilizarán.
Variables
    // Indica el tipo de dato de las variables.
    Entero: a
    // Indica el tipo de dato de las variables.
    Real: b
// Comienza la ejecución del algoritmo.
Inicio
    // Calcula y guarda el valor de la expresión.
    a = 10 / 3
    // Calcula y guarda el valor de la expresión.
    b = 10.0 / 3.0

    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Resultado con variable entera: ", a
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Resultado con variable real: ", b
// Finaliza el algoritmo.
Fin
```

**Prueba de escritorio**

| Operación | Tipo de resultado | Valor |
|---|---|---:|
| 10 / 3 | Entero | 3 |
| 10.0 / 3.0 | Real | 3.3333 aproximadamente |

**Resultado:** el resultado entero descarta la parte decimal en el modelo descrito; el real conserva la fracción. El comportamiento exacto de `/` depende del lenguaje utilizado.

---
