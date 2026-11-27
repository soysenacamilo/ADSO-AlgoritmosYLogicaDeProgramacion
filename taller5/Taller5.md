# Taller 5: Pruebas de Escritorio en Lógica de Programación

**Estudiante:** Juan Camilo Jimenez Albor  
**Ficha:** 3601847  
**Asignatura:** Lógica de Programación  
**Fecha:** 27/11/2026

---

## Parte 1. ¿Qué es una prueba de escritorio?

Una prueba de escritorio es la simulación manual de la ejecución de un algoritmo. Consiste en seguir las instrucciones en el orden en que están escritas, utilizando unos datos de entrada y registrando los cambios que se producen en las variables y los mensajes que aparecen en pantalla. Durante esta actividad, la persona actúa como si fuera el computador y ejecuta cada operación, condición y ciclo sin utilizar todavía un programa ejecutable.

La prueba de escritorio es importante porque permite verificar si la lógica de un algoritmo cumple con el objetivo para el que fue diseñado. Al llevar un registro de la memoria y la pantalla, se pueden encontrar errores como variables que no se inicializan, operaciones incorrectas, condiciones que toman una decisión equivocada o ciclos que se repiten más veces de lo necesario. También ayuda a comprobar casos diferentes, como valores iguales, entradas incorrectas o límites de un ciclo.

Esta práctica permite corregir errores antes de pasar el algoritmo a un lenguaje de programación. Es más sencillo revisar y ajustar una tabla sobre el papel que buscar un problema cuando el programa ya está construido. Por eso, la prueba de escritorio es una herramienta útil para desarrollar el pensamiento lógico, comprender el funcionamiento de los algoritmos y aumentar la confianza en sus resultados.

Para realizarla se identifica cada variable, se anotan los datos de entrada y se ejecuta cada instrucción paso a paso. En la tabla se registra el valor de las variables en memoria y lo que se muestra en pantalla. Al finalizar, se compara el resultado obtenido con el resultado esperado y se escribe una conclusión sobre el cumplimiento del objetivo.

---

## Parte 2. Ejercicios propuestos resueltos

### Ejercicio 1. Área de un círculo

**Entrada de prueba:** `radio = 5`  
**Constante:** `pi = 3.1416`  
**Fórmula:** área = π × radio²

#### Pseudocódigo

```text
Algoritmo Area_Circulo                         // Identifica el algoritmo.
Variables                                        // Declara las variables.
    Real: radio, area                            // Radio y área pueden tener decimales.
    Real: pi = 3.1416                             // Guarda el valor aproximado de pi.
Inicio                                           // Comienza la ejecución.
    Escriba "Digite el radio del círculo:"      // Solicita el radio al usuario.
    Lea radio                                    // Lee el valor ingresado.
    area = pi * radio * radio                    // Calcula el área del círculo.
    Escriba "El área es: ", area                 // Muestra el resultado.
Fin                                              // Termina el algoritmo.
```

#### Tabla de memoria y pantalla

| Paso | Instrucción | radio | pi | area | Pantalla |
|---:|---|---:|---:|---:|---|
| 1 | Inicio | — | 3.1416 | — | Vacía |
| 2 | Escriba solicitud | — | 3.1416 | — | Digite el radio del círculo: |
| 3 | Lea radio | 5 | 3.1416 | — | Digite el radio del círculo: |
| 4 | `area = pi * radio * radio` | 5 | 3.1416 | 78.54 | Digite el radio del círculo: |
| 5 | Escriba el área | 5 | 3.1416 | 78.54 | El área es: 78.54 |
| 6 | Fin | 5 | 3.1416 | 78.54 | El área es: 78.54 |

**Verificación manual:** 3.1416 × 5² = 3.1416 × 25 = 78.54.

**Conclusión:** Sí cumple el objetivo. El resultado calculado es 78.54 y coincide con la fórmula del área del círculo.

---

### Ejercicio 2. Determinar el mayor de dos números

Se realizan las dos pruebas solicitadas.

#### Pseudocódigo

```text
Algoritmo Mayor_Dos_Numeros                   // Nombre del algoritmo.
Variables                                        // Declara las variables.
    Entero: a, b                                // Guarda los dos números enteros.
Inicio                                           // Comienza la ejecución.
    Escriba "Digite el primer número:"          // Solicita el primer número.
    Lea a                                        // Lee el primer número.
    Escriba "Digite el segundo número:"         // Solicita el segundo número.
    Lea b                                        // Lee el segundo número.
    Si a > b Entonces                            // Comprueba si a es mayor que b.
        Escriba "El mayor es: ", a               // Muestra a si la condición es verdadera.
    Sino                                         // Se ejecuta si a no es mayor que b.
        Escriba "El mayor es: ", b               // Muestra b.
    Fin_Si                                       // Cierra la condición.
Fin                                              // Termina el algoritmo.
```

#### Caso 1: `a = 10`, `b = 7`

| Paso | Instrucción / evaluación | a | b | Pantalla |
|---:|---|---:|---:|---|
| 1 | Inicio | — | — | Vacía |
| 2 | Solicita primer número | — | — | Digite el primer número: |
| 3 | Lea a | 10 | — | Digite el primer número: |
| 4 | Solicita segundo número | 10 | — | Digite el segundo número: |
| 5 | Lea b | 10 | 7 | Digite el segundo número: |
| 6 | Evalúa `10 > 7` | 10 | 7 | Condición verdadera |
| 7 | Escribe a | 10 | 7 | El mayor es: 10 |
| 8 | Fin | 10 | 7 | El mayor es: 10 |

**Conclusión del caso 1:** Sí, muestra 10, que es el mayor.

#### Caso 2: `a = 3`, `b = 12`

| Paso | Instrucción / evaluación | a | b | Pantalla |
|---:|---|---:|---:|---|
| 1 | Inicio | — | — | Vacía |
| 2 | Solicita primer número | — | — | Digite el primer número: |
| 3 | Lea a | 3 | — | Digite el primer número: |
| 4 | Solicita segundo número | 3 | — | Digite el segundo número: |
| 5 | Lea b | 3 | 12 | Digite el segundo número: |
| 6 | Evalúa `3 > 12` | 3 | 12 | Condición falsa |
| 7 | Ejecuta Sino y escribe b | 3 | 12 | El mayor es: 12 |
| 8 | Fin | 3 | 12 | El mayor es: 12 |

**Conclusión del caso 2:** Sí, muestra 12, que es el mayor.

**¿Qué pasa si `a = b`?** La condición `a > b` es falsa y se ejecuta `Sino`, por lo que se muestra `b`. El valor mostrado sigue siendo el mayor porque ambos son iguales, pero el algoritmo no informa que existe un empate.

---

### Ejercicio 3. Suma de los primeros N números

**Entrada de prueba:** `n = 5`  
**Resultado esperado:** 1 + 2 + 3 + 4 + 5 = 15.

#### Pseudocódigo

```text
Algoritmo Suma_N_Numeros                       // Identifica el algoritmo.
Variables                                        // Declara las variables.
    Entero: n, i, suma                          // n es el límite, i el contador y suma el acumulador.
Inicio                                           // Comienza la ejecución.
    Escriba "Digite un número entero positivo:" // Solicita el valor de n.
    Lea n                                        // Lee el número ingresado.
    suma = 0                                     // Inicializa el acumulador en cero.
    Para i = 1 Hasta n Hacer                     // Recorre desde 1 hasta n.
        suma = suma + i                           // Agrega el valor de i a la suma.
    Fin_Para                                       // Termina el ciclo.
    Escriba "La suma de 1 a ", n, " es: ", suma  // Muestra el resultado.
Fin                                              // Termina el algoritmo.
```

#### Tabla de memoria y pantalla

| Paso | Instrucción / evaluación | n | i | suma | Pantalla |
|---:|---|---:|---:|---:|---|
| 1 | Inicio | — | — | — | Vacía |
| 2 | Escribe solicitud | — | — | — | Digite un número entero positivo: |
| 3 | Lea n | 5 | — | — | Digite un número entero positivo: |
| 4 | `suma = 0` | 5 | — | 0 | Sin cambios |
| 5 | `i = 1`; suma = 0 + 1 | 5 | 1 | 1 | Sin cambios |
| 6 | `i = 2`; suma = 1 + 2 | 5 | 2 | 3 | Sin cambios |
| 7 | `i = 3`; suma = 3 + 3 | 5 | 3 | 6 | Sin cambios |
| 8 | `i = 4`; suma = 6 + 4 | 5 | 4 | 10 | Sin cambios |
| 9 | `i = 5`; suma = 10 + 5 | 5 | 5 | 15 | Sin cambios |
| 10 | Termina el ciclo | 5 | 5 | 15 | Sin cambios |
| 11 | Escribe resultado | 5 | 5 | 15 | La suma de 1 a 5 es: 15 |
| 12 | Fin | 5 | 5 | 15 | La suma de 1 a 5 es: 15 |

**¿Qué pasa si `n = 1`?** El ciclo se ejecuta una sola vez: `suma = 0 + 1 = 1`. La pantalla muestra: `La suma de 1 a 1 es: 1`.

**Conclusión:** Sí cumple el objetivo. Para `n = 5` obtiene 15, y para `n = 1` obtiene 1, porque suma los números desde 1 hasta el límite indicado.

---

### Ejercicio 4. Contar números pares e impares en un vector

**Entrada de prueba:** `v = [8, 3, 10, 7, 2]`.

#### Pseudocódigo

```text
Algoritmo Contar_Pares_Impares                 // Nombre del algoritmo.
Variables                                        // Declara las variables.
    Entero: v[5], i, pares, impares             // Vector y variables de conteo.
Inicio                                           // Comienza la ejecución.
    Para i = 1 Hasta 5 Hacer                     // Recorre las cinco posiciones.
        Escriba "Digite el número ", i, ":"      // Solicita el dato de la posición i.
        Lea v[i]                                  // Guarda el dato en el vector.
    Fin_Para                                       // Termina la lectura del vector.
    pares = 0                                      // Inicializa el contador de pares.
    impares = 0                                    // Inicializa el contador de impares.
    Para i = 1 Hasta 5 Hacer                       // Recorre el vector para contar.
        Si v[i] mod 2 = 0 Entonces                 // Comprueba si el número es divisible entre 2.
            pares = pares + 1                      // Aumenta el contador de pares.
        Sino                                        // Si el residuo no es cero.
            impares = impares + 1                  // Aumenta el contador de impares.
        Fin_Si                                      // Cierra la condición.
    Fin_Para                                        // Termina el conteo.
    Escriba "Cantidad de pares: ", pares           // Muestra el total de pares.
    Escriba "Cantidad de impares: ", impares        // Muestra el total de impares.
Fin                                               // Termina el algoritmo.
```

#### Tabla de entrada del vector

| Paso | Instrucción | i | v[1] | v[2] | v[3] | v[4] | v[5] | Pantalla |
|---:|---|---:|---:|---:|---:|---:|---:|---|
| 1 | Lee primer valor | 1 | 8 | — | — | — | — | Digite el número 1: |
| 2 | Lee segundo valor | 2 | 8 | 3 | — | — | — | Digite el número 2: |
| 3 | Lee tercer valor | 3 | 8 | 3 | 10 | — | — | Digite el número 3: |
| 4 | Lee cuarto valor | 4 | 8 | 3 | 10 | 7 | — | Digite el número 4: |
| 5 | Lee quinto valor | 5 | 8 | 3 | 10 | 7 | 2 | Digite el número 5: |

#### Tabla de conteo

| Paso | Instrucción / evaluación | i | v[i] | pares | impares | Pantalla |
|---:|---|---:|---:|---:|---:|---|
| 1 | Inicializa contadores | — | — | 0 | 0 | Sin cambios |
| 2 | `8 mod 2 = 0`, par | 1 | 8 | 1 | 0 | Sin cambios |
| 3 | `3 mod 2 ≠ 0`, impar | 2 | 3 | 1 | 1 | Sin cambios |
| 4 | `10 mod 2 = 0`, par | 3 | 10 | 2 | 1 | Sin cambios |
| 5 | `7 mod 2 ≠ 0`, impar | 4 | 7 | 2 | 2 | Sin cambios |
| 6 | `2 mod 2 = 0`, par | 5 | 2 | 3 | 2 | Sin cambios |
| 7 | Muestra pares | 5 | — | 3 | 2 | Cantidad de pares: 3 |
| 8 | Muestra impares | 5 | — | 3 | 2 | Cantidad de impares: 2 |

**Conclusión:** Sí cumple el objetivo. Hay 3 números pares (8, 10 y 2) y 2 números impares (3 y 7).

---

### Ejercicio 5. Validar contraseña con 3 intentos

**Contraseña correcta:** `"12345"`.

#### Pseudocódigo

```text
Algoritmo Login                                  // Nombre del algoritmo.
Variables                                        // Declara las variables.
    Cadena: password                             // Guarda la contraseña completa.
    Entero: intentos                             // Cuenta los intentos incorrectos.
    Lógico: acceso                                // Indica si el acceso fue autorizado.
Inicio                                           // Comienza la ejecución.
    intentos = 0                                  // Inicializa los intentos fallidos.
    acceso = Falso                                 // El acceso aún no está autorizado.
    Mientras intentos < 3 Y NO acceso Hacer       // Repite si quedan intentos y no hay acceso.
        Escriba "Digite la contraseña:"            // Solicita la contraseña.
        Lea password                              // Lee la contraseña ingresada.
        Si password = "12345" Entonces             // Compara con la contraseña correcta.
            acceso = Verdadero                     // Autoriza el acceso.
        Sino                                       // Se ejecuta si la contraseña es incorrecta.
            intentos = intentos + 1                // Aumenta el contador de fallos.
            Escriba "Contraseña incorrecta. Intento ", intentos, " de 3" // Informa el intento.
        Fin_Si                                     // Cierra la condición.
    Fin_Mientras                                   // Termina al autorizar o llegar a tres fallos.
    Si acceso Entonces                             // Comprueba si se autorizó el acceso.
        Escriba "Bienvenido"                       // Muestra el mensaje de bienvenida.
    Sino                                           // Si no se autorizó.
        Escriba "Cuenta bloqueada"                 // Muestra el mensaje de bloqueo.
    Fin_Si                                         // Cierra la condición.
Fin                                              // Termina el algoritmo.
```

#### Caso 1. Contraseña correcta en el primer intento

**Entrada:** `"12345"`.

| Paso | Instrucción / evaluación | password | intentos | acceso | Pantalla |
|---:|---|---|---:|---|---|
| 1 | Inicializa variables | — | 0 | Falso | Vacía |
| 2 | Evalúa condición del Mientras | — | 0 | Falso | Entra al ciclo |
| 3 | Solicita contraseña | — | 0 | Falso | Digite la contraseña: |
| 4 | Lee contraseña | 12345 | 0 | Falso | Digite la contraseña: |
| 5 | Compara con contraseña correcta | 12345 | 0 | Falso | Condición verdadera |
| 6 | `acceso = Verdadero` | 12345 | 0 | Verdadero | Sin mensaje nuevo |
| 7 | Vuelve a evaluar el Mientras | 12345 | 0 | Verdadero | Condición falsa, sale |
| 8 | Evalúa `Si acceso` | 12345 | 0 | Verdadero | Bienvenido |
| 9 | Fin | 12345 | 0 | Verdadero | Bienvenido |

**Conclusión del caso 1:** Aparece **“Bienvenido”** porque la contraseña es correcta en el primer intento.

#### Caso 2. Tres contraseñas incorrectas

**Entradas:** `"111"`, `"222"`, `"333"`.

| Paso | Instrucción / evaluación | password | intentos | acceso | Pantalla |
|---:|---|---|---:|---|---|
| 1 | Inicializa variables | — | 0 | Falso | Vacía |
| 2 | Solicita y lee primer valor | 111 | 0 | Falso | Digite la contraseña: |
| 3 | Contraseña incorrecta; aumenta contador | 111 | 1 | Falso | Contraseña incorrecta. Intento 1 de 3 |
| 4 | Solicita y lee segundo valor | 222 | 1 | Falso | Digite la contraseña: |
| 5 | Contraseña incorrecta; aumenta contador | 222 | 2 | Falso | Contraseña incorrecta. Intento 2 de 3 |
| 6 | Solicita y lee tercer valor | 333 | 2 | Falso | Digite la contraseña: |
| 7 | Contraseña incorrecta; aumenta contador | 333 | 3 | Falso | Contraseña incorrecta. Intento 3 de 3 |
| 8 | Evalúa `3 < 3 Y NO Falso` | 333 | 3 | Falso | Condición falsa, sale |
| 9 | Evalúa `Si acceso` | 333 | 3 | Falso | Cuenta bloqueada |
| 10 | Fin | 333 | 3 | Falso | Cuenta bloqueada |

**Conclusión del caso 2:** Aparece **“Cuenta bloqueada”** después de tres intentos incorrectos.

**Conclusión general:** Sí cumple el objetivo. El algoritmo permite entrar cuando la contraseña es correcta y detiene el proceso después de tres fallos.

---

## Reflexión final

Al realizar las pruebas de escritorio aprendí que es necesario seguir las instrucciones de un algoritmo paso a paso y registrar los cambios de las variables para comprender cómo funciona. Las tablas de memoria y pantalla permiten verificar las operaciones, las condiciones y los ciclos, y ayudan a detectar situaciones que podrían pasar desapercibidas al leer solamente el pseudocódigo. Considero que esta práctica es importante antes de programar porque permite comprobar la lógica, corregir errores con anticipación y tener más seguridad de que el algoritmo producirá el resultado esperado.

---

## Referencia

Trejos Buriticá, O. I. *Lógica de programación*. Referencia indicada en el material del taller.

Taller 5: *Pruebas de Escritorio en Lógica de Programación*.  
https://github.com/diehercasvan/Programming_logic/blob/main/Algorithms/Workshop/Taller%205%20Pruebas%20de%20Escritorio%20en%20L%C3%B3gica%20de%20Programaci%C3%B3n.md
