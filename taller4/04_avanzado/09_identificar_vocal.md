# Ejercicio 9. Determinar si un carácter es una vocal

**Tipos de datos y justificación**

- `letra`: Caracter, porque almacena un único símbolo.
- `es_vocal`: Lógico, porque indica si la letra coincide con una vocal.

**Pseudocódigo**

```text
// Identifica el nombre del algoritmo.
Algoritmo Identificar_Vocal
// Declara las variables que se utilizarán.
Variables
    // Indica el tipo de dato de las variables.
    Caracter: letra
    // Indica el tipo de dato de las variables.
    Logico: es_vocal
// Comienza la ejecución del algoritmo.
Inicio
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Digite una letra minúscula:"
    // Recibe el dato ingresado por el usuario.
    Lea letra

    // Calcula y guarda el valor de la expresión.
    es_vocal = (letra = 'a' O letra = 'e' O letra = 'i' O letra = 'o' O letra = 'u')

    // Comprueba la condición antes de decidir qué camino seguir.
    Si es_vocal Entonces
        // Muestra un mensaje o el resultado en pantalla.
        Escriba "El carácter es una vocal."
    // Indica qué hacer cuando la condición anterior es falsa.
    Sino
        // Muestra un mensaje o el resultado en pantalla.
        Escriba "El carácter no es una vocal minúscula."
    // Cierra la estructura condicional.
    Fin_Si
// Finaliza el algoritmo.
Fin
```

**Prueba de escritorio**

| Entrada | es_vocal | Mensaje |
|---|---|---|
| `'e'` | Verdadero | Es una vocal |
| `'x'` | Falso | No es una vocal minúscula |

**Resultado:** se compara el carácter con cada una de las cinco vocales minúsculas. Para aceptar mayúsculas también, se deben incluir `'A'`, `'E'`, `'I'`, `'O'` y `'U'` en la condición.

---
