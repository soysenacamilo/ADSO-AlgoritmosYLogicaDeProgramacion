# Ejercicio 6. Concatenar nombre y apellido

**Tipos de datos y justificación**

- `nombre`, `apellido`, `nombre_completo`: Cadena, porque cada variable puede almacenar varios caracteres y espacios.

**Pseudocódigo**

```text
// Identifica el nombre del algoritmo.
Algoritmo Nombre_Completo
// Declara las variables que se utilizarán.
Variables
    // Indica el tipo de dato de las variables.
    Cadena: nombre, apellido, nombre_completo
// Comienza la ejecución del algoritmo.
Inicio
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Digite su nombre:"
    // Recibe el dato ingresado por el usuario.
    Lea nombre
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Digite su apellido:"
    // Recibe el dato ingresado por el usuario.
    Lea apellido

    // Calcula y guarda el valor de la expresión.
    nombre_completo = nombre + " " + apellido

    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Nombre completo: ", nombre_completo
// Finaliza el algoritmo.
Fin
```

**Prueba de escritorio**

| Nombre | Apellido | Nombre completo |
|---|---|---|
| Juan Camilo | Jimenez Albor | Juan Camilo Jimenez Albor |

**Resultado:** las cadenas se unen usando `+` y un espacio entre ellas.

---
