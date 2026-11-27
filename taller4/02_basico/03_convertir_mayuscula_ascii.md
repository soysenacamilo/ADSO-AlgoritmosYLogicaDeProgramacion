# Ejercicio 3. Convertir una letra a mayúscula usando ASCII

**Tipos de datos y justificación**

- `letra`: Caracter, porque almacena un solo símbolo.
- `letra_mayuscula`: Caracter, porque también almacena un solo símbolo.

**Pseudocódigo**

```text
// Identifica el nombre del algoritmo.
Algoritmo Convertir_Mayuscula_ASCII
// Declara las variables que se utilizarán.
Variables
    // Indica el tipo de dato de las variables.
    Caracter: letra, letra_mayuscula
// Comienza la ejecución del algoritmo.
Inicio
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Digite una letra minúscula de la a a la z:"
    // Recibe el dato ingresado por el usuario.
    Lea letra

    // Comprueba la condición antes de decidir qué camino seguir.
    Si letra >= 'a' Y letra <= 'z' Entonces
        // Convierte la letra a mayúscula restando 32 al código ASCII.
        letra_mayuscula = letra - 32
        // Muestra un mensaje o el resultado en pantalla.
        Escriba "La letra en mayúscula es: ", letra_mayuscula
    // Indica qué hacer cuando la condición anterior es falsa.
    Sino
        // Muestra un mensaje o el resultado en pantalla.
        Escriba "Entrada inválida. Debe ingresar una letra minúscula ASCII."
    // Cierra la estructura condicional.
    Fin_Si
// Finaliza el algoritmo.
Fin
```

**Prueba de escritorio**

| Entrada | Código ASCII | Operación | Salida |
|---|---:|---|---|
| `'a'` | 97 | 97 - 32 = 65 | `'A'` |
| `'m'` | 109 | 109 - 32 = 77 | `'M'` |

**Resultado:** se convierte la letra minúscula a su equivalente mayúscula. Si se ingresa un número, un signo o una letra fuera del rango indicado, se muestra un mensaje de entrada inválida. La operación ASCII es conceptual; algunos lenguajes requieren convertir el carácter a su código numérico y luego volver a carácter.

---
