# Ejercicio 2. Determinar si un número es positivo

**Tipos de datos y justificación**

- `numero`: Real, para aceptar tanto números enteros como decimales.
- `es_positivo`: Lógico, porque almacena el resultado de una comparación.

**Pseudocódigo**

```text
// Identifica el nombre del algoritmo.
Algoritmo Numero_Positivo
// Declara las variables que se utilizarán.
Variables
    // Indica el tipo de dato de las variables.
    Real: numero
    // Indica el tipo de dato de las variables.
    Logico: es_positivo
// Comienza la ejecución del algoritmo.
Inicio
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Digite un número:"
    // Recibe el dato ingresado por el usuario.
    Lea numero

    // Calcula y guarda el valor de la expresión.
    es_positivo = (numero > 0)

    // Comprueba la condición antes de decidir qué camino seguir.
    Si es_positivo Entonces
        // Muestra un mensaje o el resultado en pantalla.
        Escriba "El número es positivo."
    // Indica qué hacer cuando la condición anterior es falsa.
    Sino
        // Muestra un mensaje o el resultado en pantalla.
        Escriba "El número no es positivo."
    // Cierra la estructura condicional.
    Fin_Si
// Finaliza el algoritmo.
Fin
```

**Prueba de escritorio**

| Número | es_positivo | Mensaje |
|---:|---|---|
| 4.5 | Verdadero | El número es positivo |
| 0 | Falso | El número no es positivo |
| -3 | Falso | El número no es positivo |

**Resultado:** cero no se considera positivo porque la condición es estrictamente mayor que cero.

---
