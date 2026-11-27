# Teoría: Tipos de Datos

## Parte 1. Contextualización teórica

### Importancia de los tipos de datos

Un tipo de dato indica qué clase de información puede almacenar una variable y qué operaciones se pueden realizar con ella. Antes de escribir un algoritmo, es importante identificar qué datos se necesitan y elegir un tipo adecuado. Esta decisión ayuda a organizar la información, evitar operaciones incorrectas y obtener resultados confiables.

Una variable puede entenderse como un espacio de memoria cuyo contenido puede cambiar durante la ejecución de un algoritmo. En el capítulo 3 de *Lógica de programación*, Omar Iván Trejos Buriticá explica las variables, sus tipos, las asignaciones y los operadores. La idea de que las variables son como “cajitas” sirve para comprender que cada espacio debe guardar información compatible con su tipo.

Los tipos básicos trabajados en este taller son:

- **Entero:** almacena números sin parte decimal, como `8`, `-12` o `0`. Es útil para edades, cantidades y contadores.
- **Real:** almacena números que pueden tener parte decimal, como `3.5` o `82.75`. Se utiliza para precios, medidas, notas y promedios.
- **Carácter:** representa un solo símbolo, como `'A'`, `'7'` o `'?'`. En los ejemplos de conversión se relaciona con el código ASCII.
- **Lógico:** almacena uno de dos valores: `Verdadero` o `Falso`. Es útil para representar el resultado de una condición.
- **Cadena:** contiene varios caracteres, como `"Juan"` o `"Jimenez"`. Se usa para nombres, apellidos y textos.

También se debe distinguir entre aritmética entera y real. En el modelo de pseudocódigo usado en este taller, `10 / 3` con variables enteras produce `3`, mientras que `10.0 / 3.0` con variables reales produce aproximadamente `3.3333`. La forma exacta de la división depende del lenguaje de programación, por lo que al implementarlo se debe revisar su comportamiento.

Elegir correctamente los tipos de datos desde el inicio facilita la lectura del algoritmo, evita perder información y permite que cada operación tenga sentido.

### Tabla de tipos de datos

| Tipo | Qué almacena | Ejemplo | Uso habitual |
|---|---|---|---|
| Entero | Números sin decimales | `25` | Edad, cantidad, contador |
| Real | Números con decimales | `12.75` | Precio, medida, promedio |
| Carácter | Un símbolo | `'A'` | Letra o signo |
| Lógico | Verdadero o Falso | `Verdadero` | Validar una condición |
| Cadena | Texto | `"Camilo"` | Nombre, apellido, mensaje |

### Código ASCII

ASCII asigna códigos numéricos a determinados caracteres. Algunos ejemplos son:

| Carácter | Código ASCII |
|---|---:|
| `'A'` | 65 |
| `'a'` | 97 |
| `'0'` | 48 |
| `'1'` | 49 |

En el conjunto de letras inglesas minúsculas, el código ASCII de una letra es 32 unidades mayor que el de su equivalente mayúscula. Por eso, en el ejercicio se puede convertir una letra minúscula restando 32. Este procedimiento aplica a letras ASCII de `a` a `z`, no a todos los caracteres ni a todas las letras acentuadas.

---
