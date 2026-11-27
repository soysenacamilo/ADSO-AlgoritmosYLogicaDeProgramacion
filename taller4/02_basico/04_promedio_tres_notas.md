# Ejercicio 4. Calcular el promedio de tres notas

**Tipos de datos y justificación**

- `nota1`, `nota2`, `nota3`: Real, porque las notas pueden tener decimales.
- `promedio`: Real, porque el promedio puede tener decimales.

**Pseudocódigo**

```text
// Identifica el nombre del algoritmo.
Algoritmo Promedio_Tres_Notas
// Declara las variables que se utilizarán.
Variables
    // Indica el tipo de dato de las variables.
    Real: nota1, nota2, nota3, promedio
// Comienza la ejecución del algoritmo.
Inicio
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Digite la primera nota:"
    // Recibe el dato ingresado por el usuario.
    Lea nota1
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Digite la segunda nota:"
    // Recibe el dato ingresado por el usuario.
    Lea nota2
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Digite la tercera nota:"
    // Recibe el dato ingresado por el usuario.
    Lea nota3

    // Calcula y guarda el valor de la expresión.
    promedio = (nota1 + nota2 + nota3) / 3.0

    // Muestra un mensaje o el resultado en pantalla.
    Escriba "El promedio es: ", promedio
// Finaliza el algoritmo.
Fin
```

**Prueba de escritorio**

| Nota 1 | Nota 2 | Nota 3 | Promedio |
|---:|---:|---:|---:|
| 4.0 | 3.5 | 4.5 | 4.0 |

**Resultado:** el promedio de las tres notas es 4.0.

---
