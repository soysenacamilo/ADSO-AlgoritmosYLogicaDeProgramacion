# Ejercicio 1. Calcular el área de un triángulo

**Tipos de datos y justificación**

- `base`: Real, porque una medida puede tener decimales.
- `altura`: Real, por la misma razón.
- `area`: Real, porque el resultado de multiplicar y dividir puede tener decimales.

**Pseudocódigo**

```text
// Identifica el nombre del algoritmo.
Algoritmo Area_Triangulo
// Declara las variables que se utilizarán.
Variables
    // Indica el tipo de dato de las variables.
    Real: base, altura, area
// Comienza la ejecución del algoritmo.
Inicio
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Digite la base del triángulo:"
    // Recibe el dato ingresado por el usuario.
    Lea base
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Digite la altura del triángulo:"
    // Recibe el dato ingresado por el usuario.
    Lea altura

    // Calcula y guarda el valor de la expresión.
    area = (base * altura) / 2.0

    // Muestra un mensaje o el resultado en pantalla.
    Escriba "El área del triángulo es: ", area
// Finaliza el algoritmo.
Fin
```

**Prueba de escritorio**

| Base | Altura | Área |
|---:|---:|---:|
| 8.0 | 5.0 | 20.0 |

**Resultado:** el área es 20 unidades cuadradas.

---
