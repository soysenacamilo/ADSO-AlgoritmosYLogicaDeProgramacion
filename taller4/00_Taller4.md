# Taller 4: Tipos de Datos en Lógica de Programación

**Estudiante:** Juan Camilo Jimenez Albor  
**Ficha:** 3601847  
**Asignatura:** Lógica de Programación  
**Tema:** Variables y tipos de datos  
**Fecha:** 27/11/2026  
**Modalidad:** Individual  

---

## Objetivo

Comprender la importancia de los tipos de datos en la lógica de programación, identificar cuándo utilizar Entero, Real, Carácter, Lógico y Cadena, y aplicar estos conceptos en algoritmos que resuelven problemas básicos.

---

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

## Parte 2. Ejemplos resueltos

### Ejemplo 1. Declaración y uso de variables enteras

```text
Algoritmo Ejemplo_Enteros  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Entero: anio_actual, anio_nacimiento, edad  // Declara variables que almacenan números enteros.
Inicio  // Marca el comienzo de las instrucciones.
    anio_actual = 2026  // Asigna un valor inicial a la variable.
    Escriba "Digite su año de nacimiento:"  // Muestra un mensaje o resultado en pantalla.
    Lea anio_nacimiento  // Lee el dato que ingresa el usuario.
    edad = anio_actual - anio_nacimiento  // Calcula y asigna el valor a la variable.
    Escriba "Su edad aproximada es: ", edad  // Muestra un mensaje o resultado en pantalla.
Fin  // Marca el final del algoritmo.
```

**Explicación:** se utilizan variables enteras porque los años y la edad se representan sin decimales. La edad es aproximada porque no se pregunta si la persona ya cumplió años en el año actual.

### Ejemplo 2. Declaración y uso de variables reales

```text
Algoritmo Ejemplo_Reales  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Real: precio, descuento, precio_final  // Declara variables que pueden almacenar decimales.
Inicio  // Marca el comienzo de las instrucciones.
    Escriba "Digite el precio:"  // Muestra un mensaje o resultado en pantalla.
    Lea precio  // Lee el dato que ingresa el usuario.
    Escriba "Digite el descuento como decimal (0.15 equivale a 15%):"  // Muestra un mensaje o resultado en pantalla.
    Lea descuento  // Lee el dato que ingresa el usuario.
    precio_final = precio - (precio * descuento)  // Calcula y asigna el valor a la variable.
    Escriba "Precio final: ", precio_final  // Muestra un mensaje o resultado en pantalla.
Fin  // Marca el final del algoritmo.
```

**Explicación:** precio, descuento y precio final son reales porque pueden tener decimales.

### Ejemplo 3. Variable de tipo carácter

```text
Algoritmo Ejemplo_Caracter  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Caracter: letra, letra_mayuscula  // Declara variables que almacenan un solo carácter.
Inicio  // Marca el comienzo de las instrucciones.
    Escriba "Digite una letra minúscula ASCII:"  // Muestra un mensaje o resultado en pantalla.
    Lea letra  // Lee el dato que ingresa el usuario.
    letra_mayuscula = letra - 32  // Convierte la letra a mayúscula restando 32 en el código ASCII.
    Escriba "Letra mayúscula: ", letra_mayuscula  // Muestra un mensaje o resultado en pantalla.
Fin  // Marca el final del algoritmo.
```

**Explicación:** se utiliza el tipo carácter para almacenar una sola letra. La operación de restar 32 representa el procedimiento ASCII indicado en el taller. En un lenguaje real se debe comprobar que la entrada sea una letra minúscula ASCII y usar una función de conversión si el lenguaje no permite operar directamente con caracteres.

### Ejemplo 4. Variables lógicas

```text
Algoritmo Ejemplo_Logico  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Entero: edad  // Declara variables que almacenan números enteros.
    Logico: es_mayor  // Declara variables que guardan Verdadero o Falso.
Inicio  // Marca el comienzo de las instrucciones.
    Escriba "Digite su edad:"  // Muestra un mensaje o resultado en pantalla.
    Lea edad  // Lee el dato que ingresa el usuario.
    es_mayor = (edad >= 18)  // Guarda el resultado de la comparación o expresión.

    Si es_mayor Entonces  // Evalúa la condición para decidir qué instrucciones ejecutar.
        Escriba "Es mayor de edad."  // Muestra un mensaje o resultado en pantalla.
    Sino  // Se ejecuta cuando la condición del Si es falsa.
        Escriba "Es menor de edad."  // Muestra un mensaje o resultado en pantalla.
    Fin_Si  // Termina la estructura condicional.
Fin  // Marca el final del algoritmo.
```

**Explicación:** la comparación `edad >= 18` produce un valor lógico, Verdadero o Falso.

### Ejemplo 5. Concatenación de cadenas

```text
Algoritmo Ejemplo_Cadenas  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Cadena: nombre, apellido, nombre_completo  // Declara variables que almacenan texto.
Inicio  // Marca el comienzo de las instrucciones.
    Escriba "Digite su nombre:"  // Muestra un mensaje o resultado en pantalla.
    Lea nombre  // Lee el dato que ingresa el usuario.
    Escriba "Digite su apellido:"  // Muestra un mensaje o resultado en pantalla.
    Lea apellido  // Lee el dato que ingresa el usuario.
    nombre_completo = nombre + " " + apellido  // Calcula y asigna el valor a la variable.
    Escriba "Nombre completo: ", nombre_completo  // Muestra un mensaje o resultado en pantalla.
Fin  // Marca el final del algoritmo.
```

**Explicación:** nombre y apellido son cadenas porque pueden contener varios caracteres. El operador `+` concatena los textos en el pseudocódigo de este taller.

### Ejemplo 6. Aritmética entera y real

```text
Algoritmo Diferencia_Aritmetica  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Entero: resultado_entero  // Declara variables que almacenan números enteros.
    Real: resultado_real  // Declara variables que pueden almacenar decimales.
Inicio  // Marca el comienzo de las instrucciones.
    resultado_entero = 10 / 3  // Calcula y asigna el valor a la variable.
    resultado_real = 10.0 / 3.0  // Calcula y asigna el valor a la variable.
    Escriba "Resultado entero: ", resultado_entero  // Muestra un mensaje o resultado en pantalla.
    Escriba "Resultado real: ", resultado_real  // Muestra un mensaje o resultado en pantalla.
Fin  // Marca el final del algoritmo.
```

**Explicación:** en el modelo de aritmética entera del taller, el resultado entero es `3`; en aritmética real es aproximadamente `3.3333`. En lenguajes como Python, la división `/` no se comporta así para enteros, por lo que la implementación debe ajustarse al lenguaje.

---

## Parte 3. Ejercicios propuestos resueltos

### Ejercicio 1. Calcular el área de un triángulo

**Tipos de datos y justificación**

- `base`: Real, porque una medida puede tener decimales.
- `altura`: Real, por la misma razón.
- `area`: Real, porque el resultado de multiplicar y dividir puede tener decimales.

**Pseudocódigo**

```text
Algoritmo Area_Triangulo  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Real: base, altura, area  // Declara variables que pueden almacenar decimales.
Inicio  // Marca el comienzo de las instrucciones.
    Escriba "Digite la base del triángulo:"  // Muestra un mensaje o resultado en pantalla.
    Lea base  // Lee el dato que ingresa el usuario.
    Escriba "Digite la altura del triángulo:"  // Muestra un mensaje o resultado en pantalla.
    Lea altura  // Lee el dato que ingresa el usuario.

    area = (base * altura) / 2.0  // Realiza el cálculo indicado usando las variables.

    Escriba "El área del triángulo es: ", area  // Muestra un mensaje o resultado en pantalla.
Fin  // Marca el final del algoritmo.
```

**Prueba de escritorio**

| Base | Altura | Área |
|---:|---:|---:|
| 8.0 | 5.0 | 20.0 |

**Resultado:** el área es 20 unidades cuadradas.

---

### Ejercicio 2. Determinar si un número es positivo

**Tipos de datos y justificación**

- `numero`: Real, para aceptar tanto números enteros como decimales.
- `es_positivo`: Lógico, porque almacena el resultado de una comparación.

**Pseudocódigo**

```text
Algoritmo Numero_Positivo  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Real: numero  // Declara variables que pueden almacenar decimales.
    Logico: es_positivo  // Declara variables que guardan Verdadero o Falso.
Inicio  // Marca el comienzo de las instrucciones.
    Escriba "Digite un número:"  // Muestra un mensaje o resultado en pantalla.
    Lea numero  // Lee el dato que ingresa el usuario.

    es_positivo = (numero > 0)  // Guarda el resultado de la comparación o expresión.

    Si es_positivo Entonces  // Evalúa la condición para decidir qué instrucciones ejecutar.
        Escriba "El número es positivo."  // Muestra un mensaje o resultado en pantalla.
    Sino  // Se ejecuta cuando la condición del Si es falsa.
        Escriba "El número no es positivo."  // Muestra un mensaje o resultado en pantalla.
    Fin_Si  // Termina la estructura condicional.
Fin  // Marca el final del algoritmo.
```

**Prueba de escritorio**

| Número | es_positivo | Mensaje |
|---:|---|---|
| 4.5 | Verdadero | El número es positivo |
| 0 | Falso | El número no es positivo |
| -3 | Falso | El número no es positivo |

**Resultado:** cero no se considera positivo porque la condición es estrictamente mayor que cero.

---

### Ejercicio 3. Convertir una letra a mayúscula usando ASCII

**Tipos de datos y justificación**

- `letra`: Caracter, porque almacena un solo símbolo.
- `letra_mayuscula`: Caracter, porque también almacena un solo símbolo.

**Pseudocódigo**

```text
Algoritmo Convertir_Mayuscula_ASCII  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Caracter: letra, letra_mayuscula  // Declara variables que almacenan un solo carácter.
Inicio  // Marca el comienzo de las instrucciones.
    Escriba "Digite una letra minúscula de la a a la z:"  // Muestra un mensaje o resultado en pantalla.
    Lea letra  // Lee el dato que ingresa el usuario.

    Si letra >= 'a' Y letra <= 'z' Entonces  // Evalúa la condición para decidir qué instrucciones ejecutar.
        letra_mayuscula = letra - 32  // Convierte la letra a mayúscula restando 32 en el código ASCII.
        Escriba "La letra en mayúscula es: ", letra_mayuscula  // Muestra un mensaje o resultado en pantalla.
    Sino  // Se ejecuta cuando la condición del Si es falsa.
        Escriba "Entrada inválida. Debe ingresar una letra minúscula ASCII."  // Muestra un mensaje o resultado en pantalla.
    Fin_Si  // Termina la estructura condicional.
Fin  // Marca el final del algoritmo.
```

**Prueba de escritorio**

| Entrada | Código ASCII | Operación | Salida |
|---|---:|---|---|
| `'a'` | 97 | 97 - 32 = 65 | `'A'` |
| `'m'` | 109 | 109 - 32 = 77 | `'M'` |

**Resultado:** se convierte la letra minúscula a su equivalente mayúscula. Si se ingresa un número, un signo o una letra fuera del rango indicado, se muestra un mensaje de entrada inválida. La operación ASCII es conceptual; algunos lenguajes requieren convertir el carácter a su código numérico y luego volver a carácter.

---

### Ejercicio 4. Calcular el promedio de tres notas

**Tipos de datos y justificación**

- `nota1`, `nota2`, `nota3`: Real, porque las notas pueden tener decimales.
- `promedio`: Real, porque el promedio puede tener decimales.

**Pseudocódigo**

```text
Algoritmo Promedio_Tres_Notas  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Real: nota1, nota2, nota3, promedio  // Declara variables que pueden almacenar decimales.
Inicio  // Marca el comienzo de las instrucciones.
    Escriba "Digite la primera nota:"  // Muestra un mensaje o resultado en pantalla.
    Lea nota1  // Lee el dato que ingresa el usuario.
    Escriba "Digite la segunda nota:"  // Muestra un mensaje o resultado en pantalla.
    Lea nota2  // Lee el dato que ingresa el usuario.
    Escriba "Digite la tercera nota:"  // Muestra un mensaje o resultado en pantalla.
    Lea nota3  // Lee el dato que ingresa el usuario.

    promedio = (nota1 + nota2 + nota3) / 3.0  // Guarda el resultado de la comparación o expresión.

    Escriba "El promedio es: ", promedio  // Muestra un mensaje o resultado en pantalla.
Fin  // Marca el final del algoritmo.
```

**Prueba de escritorio**

| Nota 1 | Nota 2 | Nota 3 | Promedio |
|---:|---:|---:|---:|
| 4.0 | 3.5 | 4.5 | 4.0 |

**Resultado:** el promedio de las tres notas es 4.0.

---

### Ejercicio 5. Validar si una persona puede votar

**Tipos de datos y justificación**

- `edad`: Entero, porque se expresa en años completos en este ejercicio.
- `puede_votar`: Lógico, porque representa si se cumple o no la condición de edad.

**Pseudocódigo**

```text
Algoritmo Validar_Voto  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Entero: edad  // Declara variables que almacenan números enteros.
    Logico: puede_votar  // Declara variables que guardan Verdadero o Falso.
Inicio  // Marca el comienzo de las instrucciones.
    Escriba "Digite su edad:"  // Muestra un mensaje o resultado en pantalla.
    Lea edad  // Lee el dato que ingresa el usuario.

    puede_votar = (edad >= 18)  // Guarda el resultado de la comparación o expresión.

    Si puede_votar Entonces  // Evalúa la condición para decidir qué instrucciones ejecutar.
        Escriba "Puede votar por cumplir la edad indicada."  // Muestra un mensaje o resultado en pantalla.
    Sino  // Se ejecuta cuando la condición del Si es falsa.
        Escriba "No cumple la edad indicada para votar."  // Muestra un mensaje o resultado en pantalla.
    Fin_Si  // Termina la estructura condicional.
Fin  // Marca el final del algoritmo.
```

**Prueba de escritorio**

| Edad | puede_votar | Mensaje |
|---:|---|---|
| 18 | Verdadero | Puede votar por cumplir la edad indicada |
| 16 | Falso | No cumple la edad indicada para votar |

**Resultado:** el algoritmo valida únicamente el requisito de edad planteado en el ejercicio; no verifica otros requisitos legales.

---

### Ejercicio 6. Concatenar nombre y apellido

**Tipos de datos y justificación**

- `nombre`, `apellido`, `nombre_completo`: Cadena, porque cada variable puede almacenar varios caracteres y espacios.

**Pseudocódigo**

```text
Algoritmo Nombre_Completo  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Cadena: nombre, apellido, nombre_completo  // Declara variables que almacenan texto.
Inicio  // Marca el comienzo de las instrucciones.
    Escriba "Digite su nombre:"  // Muestra un mensaje o resultado en pantalla.
    Lea nombre  // Lee el dato que ingresa el usuario.
    Escriba "Digite su apellido:"  // Muestra un mensaje o resultado en pantalla.
    Lea apellido  // Lee el dato que ingresa el usuario.

    nombre_completo = nombre + " " + apellido  // Calcula y asigna el valor a la variable.

    Escriba "Nombre completo: ", nombre_completo  // Muestra un mensaje o resultado en pantalla.
Fin  // Marca el final del algoritmo.
```

**Prueba de escritorio**

| Nombre | Apellido | Nombre completo |
|---|---|---|
| Juan Camilo | Jimenez Albor | Juan Camilo Jimenez Albor |

**Resultado:** las cadenas se unen usando `+` y un espacio entre ellas.

---

### Ejercicio 7. Diferencia entre aritmética entera y real

**Tipos de datos y justificación**

- `a`: Entero, porque representa el resultado entero de la división según el modelo del taller.
- `b`: Real, porque conserva la parte decimal de la división.

**Pseudocódigo**

```text
Algoritmo Division_Entera_Real  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Entero: a  // Declara variables que almacenan números enteros.
    Real: b  // Declara variables que pueden almacenar decimales.
Inicio  // Marca el comienzo de las instrucciones.
    a = 10 / 3  // Calcula y asigna el valor a la variable.
    b = 10.0 / 3.0  // Calcula y asigna el valor a la variable.

    Escriba "Resultado con variable entera: ", a  // Muestra un mensaje o resultado en pantalla.
    Escriba "Resultado con variable real: ", b  // Muestra un mensaje o resultado en pantalla.
Fin  // Marca el final del algoritmo.
```

**Prueba de escritorio**

| Operación | Tipo de resultado | Valor |
|---|---|---:|
| 10 / 3 | Entero | 3 |
| 10.0 / 3.0 | Real | 3.3333 aproximadamente |

**Resultado:** el resultado entero descarta la parte decimal en el modelo descrito; el real conserva la fracción. El comportamiento exacto de `/` depende del lenguaje utilizado.

---

### Ejercicio 8. Calcular el salario neto

**Tipos de datos y justificación**

- `salario_bruto`: Real, porque un salario puede incluir centavos.
- `porcentaje_descuento`: Real, porque puede ser decimal.
- `descuento`: Real, porque es un valor monetario.
- `salario_neto`: Real, porque el resultado puede tener centavos.

**Pseudocódigo**

```text
Algoritmo Salario_Neto  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Real: salario_bruto, porcentaje_descuento, descuento, salario_neto  // Declara variables que pueden almacenar decimales.
Inicio  // Marca el comienzo de las instrucciones.
    Escriba "Digite el salario bruto:"  // Muestra un mensaje o resultado en pantalla.
    Lea salario_bruto  // Lee el dato que ingresa el usuario.
    Escriba "Digite el porcentaje de descuento (por ejemplo, 10 para 10%):"  // Muestra un mensaje o resultado en pantalla.
    Lea porcentaje_descuento  // Lee el dato que ingresa el usuario.

    Si porcentaje_descuento >= 0 Y porcentaje_descuento <= 100 Entonces  // Evalúa la condición para decidir qué instrucciones ejecutar.
        descuento = salario_bruto * (porcentaje_descuento / 100.0)  // Convierte el porcentaje a decimal para calcular el descuento.
        salario_neto = salario_bruto - descuento  // Calcula y asigna el valor a la variable.
        Escriba "Descuento aplicado: ", descuento  // Muestra un mensaje o resultado en pantalla.
        Escriba "Salario neto: ", salario_neto  // Muestra un mensaje o resultado en pantalla.
    Sino  // Se ejecuta cuando la condición del Si es falsa.
        Escriba "Porcentaje inválido. Debe estar entre 0 y 100."  // Muestra un mensaje o resultado en pantalla.
    Fin_Si  // Termina la estructura condicional.
Fin  // Marca el final del algoritmo.
```

**Prueba de escritorio**

| Salario bruto | Descuento ingresado | Valor descontado | Salario neto |
|---:|---:|---:|---:|
| 2,000,000 | 10 | 200,000 | 1,800,000 |

**Resultado:** si el usuario escribe `10`, el algoritmo lo interpreta como 10% y lo divide entre 100. Así se evita confundir `10` con `0.10`.

---

### Ejercicio 9. Determinar si un carácter es una vocal

**Tipos de datos y justificación**

- `letra`: Caracter, porque almacena un único símbolo.
- `es_vocal`: Lógico, porque indica si la letra coincide con una vocal.

**Pseudocódigo**

```text
Algoritmo Identificar_Vocal  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Caracter: letra  // Declara variables que almacenan un solo carácter.
    Logico: es_vocal  // Declara variables que guardan Verdadero o Falso.
Inicio  // Marca el comienzo de las instrucciones.
    Escriba "Digite una letra minúscula:"  // Muestra un mensaje o resultado en pantalla.
    Lea letra  // Lee el dato que ingresa el usuario.

    es_vocal = (letra = 'a' O letra = 'e' O letra = 'i' O letra = 'o' O letra = 'u')  // Guarda el resultado de la comparación o expresión.

    Si es_vocal Entonces  // Evalúa la condición para decidir qué instrucciones ejecutar.
        Escriba "El carácter es una vocal."  // Muestra un mensaje o resultado en pantalla.
    Sino  // Se ejecuta cuando la condición del Si es falsa.
        Escriba "El carácter no es una vocal minúscula."  // Muestra un mensaje o resultado en pantalla.
    Fin_Si  // Termina la estructura condicional.
Fin  // Marca el final del algoritmo.
```

**Prueba de escritorio**

| Entrada | es_vocal | Mensaje |
|---|---|---|
| `'e'` | Verdadero | Es una vocal |
| `'x'` | Falso | No es una vocal minúscula |

**Resultado:** se compara el carácter con cada una de las cinco vocales minúsculas. Para aceptar mayúsculas también, se deben incluir `'A'`, `'E'`, `'I'`, `'O'` y `'U'` en la condición.

---

### Ejercicio 10. Calcular el factorial de un número

**Tipos de datos y justificación**

- `n`: Entero, porque el factorial se calcula para un número entero no negativo.
- `i`: Entero, porque funciona como contador del ciclo.
- `factorial`: Entero, porque el resultado es un número entero.

Para números pequeños, un entero puede ser suficiente. Sin embargo, el factorial crece muy rápido: por ejemplo, `13!` ya supera el límite de un entero con signo de 32 bits. Para valores grandes se recomienda un tipo entero de precisión arbitraria o una biblioteca de números grandes. Usar Real no garantiza evitar el desbordamiento ni conservar todos los dígitos exactos.

**Pseudocódigo**

```text
Algoritmo Calcular_Factorial  // Nombre que identifica el algoritmo.
Variables  // Sección donde se declaran las variables.
    Entero: n, i, factorial  // Declara variables que almacenan números enteros.
Inicio  // Marca el comienzo de las instrucciones.
    Escriba "Digite un entero entre 0 y 12:"  // Muestra un mensaje o resultado en pantalla.
    Lea n  // Lee el dato que ingresa el usuario.

    Si n >= 0 Y n <= 12 Entonces  // Evalúa la condición para decidir qué instrucciones ejecutar.
        factorial = 1  // Inicializa el acumulador en 1.

        Para i = 1 Hasta n Haga  // Inicia un ciclo que repite instrucciones para cada valor del contador.
            factorial = factorial * i  // Calcula y asigna el valor a la variable.
        Fin_Para  // Termina el ciclo Para.

        Escriba "El factorial de ", n, " es: ", factorial  // Muestra un mensaje o resultado en pantalla.
    Sino  // Se ejecuta cuando la condición del Si es falsa.
        Escriba "Número inválido. Ingrese un entero entre 0 y 12."  // Muestra un mensaje o resultado en pantalla.
    Fin_Si  // Termina la estructura condicional.
Fin  // Marca el final del algoritmo.
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

## Reflexión final

omprendí que elegir el tipo de dato no es solamente escribir una palabra al declarar una variable, sino decidir cómo se va a representar y utilizar la información dentro de un algoritmo. Por ejemplo, una edad puede manejarse como entero, mientras que una nota o un salario necesita un tipo real para conservar los decimales. También aprendí que los valores lógicos ayudan a evaluar condiciones y que las cadenas permiten unir y manejar textos. Si se elige un tipo incorrecto, se pueden perder datos o producir resultados inesperados. Por eso, antes de programar.
