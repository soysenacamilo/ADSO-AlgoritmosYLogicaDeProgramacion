# Taller 3: Manejo de Arrays en Lógica de Programación

**Estudiante:** Juan Camilo Jimenez Albor  
**Ficha:** 3601847  
**Asignatura:** Lógica de Programación  
**Fecha:** [Completar fecha de entrega]  
**Modalidad:** Individual

## Objetivo
Comprender los arreglos y aprender a declarar, llenar, recorrer y manipular vectores y matrices mediante ciclos y condiciones.

## Parte 1. Contextualización teórica

Un arreglo es un conjunto de variables del mismo tipo que se guardan bajo un solo nombre y se identifican por una posición llamada índice. Se puede imaginar como una fila de casillas: cada casilla almacena un dato y su posición permite localizarlo. Los arreglos son homogéneos porque sus elementos comparten el mismo tipo de dato. Sus características principales son el nombre, el tipo de dato, la dimensión o capacidad y el índice que indica la ubicación. En los ejercicios de PSeInt se utilizan índices que comienzan en 1.

Existen dos tipos principales. Un **vector** es un arreglo unidimensional, organizado en una sola fila o columna; necesita un índice para acceder a un elemento, por ejemplo `notas(3)`. Una **matriz** es un arreglo bidimensional organizado en filas y columnas; necesita dos índices, uno para la fila y otro para la columna, por ejemplo `tabla(2,3)`. Para recorrer un vector se utiliza normalmente un ciclo `Para`; para recorrer una matriz se utilizan dos ciclos anidados. Los arreglos facilitan almacenar, buscar, comparar y procesar muchos datos sin crear una variable diferente para cada uno.

**Referencia indicada en la guía:** Trejos Buriticá, Omar Iván. *Lógica de programación*, capítulos 9 y 10.

## Parte 2. Los 15 ejercicios resueltos

Cada ejercicio tiene su archivo `.psc` y comentarios explicativos. También se incluye una prueba de escritorio.

### Llenar y mostrar vector

**Archivo:** `ejercicios/basico/01_llenar_mostrar_vector.psc`

```pseint
Algoritmo 01_llenar_mostrar_vector
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir v, i Como Entero
    Dimension v(8)
    // Guardar los ocho numeros ingresados.
    Para i <- 1 Hasta 8 Hacer
        Escribir "Digite el numero ", i, ":"
        Leer v(i)
    FinPara
    // Mostrar los datos conservando el orden de entrada.
    Escribir "Numeros ingresados:"
    Para i <- 1 Hasta 8 Hacer
        Escribir v(i)
    FinPara
FinAlgoritmo
```
**Prueba de escritorio:** Ingresar 10,20,30,40,50,60,70,80. Se muestran en ese orden.

### Suma de vector

**Archivo:** `ejercicios/basico/02_suma_vector.psc`

```pseint
Algoritmo 02_suma_vector
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir v, suma Como Real
    Definir i Como Entero
    Dimension v(6)
    suma <- 0 // Acumulador: comienza en cero.
    Para i <- 1 Hasta 6 Hacer
        Escribir "Digite un numero real:"
        Leer v(i)
        suma <- suma + v(i) // Agregar el dato a la suma.
    FinPara
    Escribir "La suma es: ", suma
FinAlgoritmo
```
**Prueba de escritorio:** Ingresar 1.5,2,3.5,4,5,6. Resultado: 22.

### Contar pares e impares

**Archivo:** `ejercicios/basico/03_contar_pares_impares.psc`

```pseint
Algoritmo 03_contar_pares_impares
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir v, i, pares, impares Como Entero
    Dimension v(10)
    pares <- 0
    impares <- 0
    Para i <- 1 Hasta 10 Hacer
        Escribir "Digite un entero:"
        Leer v(i)
        // MOD calcula el residuo; residuo cero significa par.
        Si v(i) MOD 2 = 0 Entonces
            pares <- pares + 1
        SiNo
            impares <- impares + 1
        FinSi
    FinPara
    Escribir "Pares: ", pares
    Escribir "Impares: ", impares
FinAlgoritmo
```
**Prueba de escritorio:** Ingresar 2,5,8,9,10,11,14,15,20,21. Resultado: 5 pares y 5 impares.

### Promedio de vector

**Archivo:** `ejercicios/basico/04_promedio_vector.psc`

```pseint
Algoritmo 04_promedio_vector
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir notas, suma, promedio Como Real
    Definir i Como Entero
    Dimension notas(5)
    suma <- 0
    Para i <- 1 Hasta 5 Hacer
        Escribir "Digite la nota:"
        Leer notas(i)
        suma <- suma + notas(i)
    FinPara
    // El promedio es la suma dividida entre cinco notas.
    promedio <- suma / 5
    Escribir "Promedio: ", promedio
FinAlgoritmo
```
**Prueba de escritorio:** Ingresar 4,3.5,5,2.5,5. Resultado: 4.

### Mostrar orden inverso

**Archivo:** `ejercicios/basico/05_orden_inverso.psc`

```pseint
Algoritmo 05_orden_inverso
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir v, i Como Entero
    Dimension v(7)
    Para i <- 1 Hasta 7 Hacer
        Escribir "Digite un numero:"
        Leer v(i)
    FinPara
    // El paso -1 hace que i disminuya desde 7 hasta 1.
    Para i <- 7 Hasta 1 Con Paso -1 Hacer
        Escribir v(i)
    FinPara
FinAlgoritmo
```
**Prueba de escritorio:** Ingresar 1,2,3,4,5,6,7. Resultado: 7,6,5,4,3,2,1.

### Buscar menor y posición

**Archivo:** `ejercicios/intermedio/06_buscar_menor.psc`

```pseint
Algoritmo 06_buscar_menor
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir v, i, menor, posicion Como Entero
    Dimension v(8)
    Para i <- 1 Hasta 8 Hacer
        Escribir "Digite un numero:"
        Leer v(i)
    FinPara
    // Tomar el primer elemento como menor inicial.
    menor <- v(1)
    posicion <- 1
    Para i <- 2 Hasta 8 Hacer
        Si v(i) < menor Entonces
            menor <- v(i) // Actualizar el menor.
            posicion <- i // Guardar su posicion.
        FinSi
    FinPara
    Escribir "Menor: ", menor
    Escribir "Posicion: ", posicion
FinAlgoritmo
```
**Prueba de escritorio:** Ingresar 8,4,9,2,6,5,7,3. Menor 2, posición 4.

### Contar valor específico

**Archivo:** `ejercicios/intermedio/07_contar_valor.psc`

```pseint
Algoritmo 07_contar_valor
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir v, i, buscado, contador Como Entero
    Dimension v(10)
    contador <- 0
    Para i <- 1 Hasta 10 Hacer
        Escribir "Digite un numero:"
        Leer v(i)
    FinPara
    Escribir "Numero que desea buscar:"
    Leer buscado
    // Contar todas las posiciones que coinciden.
    Para i <- 1 Hasta 10 Hacer
        Si v(i) = buscado Entonces
            contador <- contador + 1
        FinSi
    FinPara
    Escribir "Aparece ", contador, " veces."
FinAlgoritmo
```
**Prueba de escritorio:** Vector 4,2,4,7,4,1,8,4,3,5; buscar 4. Resultado: 4 veces.

### Vector de factoriales

**Archivo:** `ejercicios/intermedio/08_vector_factoriales.psc`

```pseint
Algoritmo 08_vector_factoriales
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir v, i, j Como Entero
    Definir factoriales, factorial Como Real
    Dimension v(5)
    Dimension factoriales(5)
    Para i <- 1 Hasta 5 Hacer
        Escribir "Digite un entero no negativo:"
        Leer v(i)
        // Validar que el factorial no se calcule con negativos.
        Mientras v(i) < 0 Hacer
            Escribir "Debe ser cero o positivo. Intente otra vez:"
            Leer v(i)
        FinMientras
    FinPara
    Para i <- 1 Hasta 5 Hacer
        factorial <- 1 // 0! y 1! son iguales a 1.
        Para j <- 1 Hasta v(i) Hacer
            factorial <- factorial * j
        FinPara
        factoriales(i) <- factorial
    FinPara
    // Mostrar el dato original y su factorial.
    Para i <- 1 Hasta 5 Hacer
        Escribir v(i), "! = ", factoriales(i)
    FinPara
FinAlgoritmo
```
**Prueba de escritorio:** Ingresar 0,1,3,4,5. Factoriales: 1,1,6,24,120.

### Invertir vector

**Archivo:** `ejercicios/intermedio/09_invertir_vector.psc`

```pseint
Algoritmo 09_invertir_vector
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir original, invertido, i Como Entero
    Dimension original(6)
    Dimension invertido(6)
    Para i <- 1 Hasta 6 Hacer
        Escribir "Digite un numero:"
        Leer original(i)
    FinPara
    // La formula 7-i relaciona la primera posicion con la sexta.
    Para i <- 1 Hasta 6 Hacer
        invertido(i) <- original(7-i)
    FinPara
    Escribir "Vector original:"
    Para i <- 1 Hasta 6 Hacer
        Escribir original(i)
    FinPara
    Escribir "Vector invertido:"
    Para i <- 1 Hasta 6 Hacer
        Escribir invertido(i)
    FinPara
FinAlgoritmo
```
**Prueba de escritorio:** Original 10,20,30,40,50,60. Invertido 60,50,40,30,20,10.

### Suma de vectores

**Archivo:** `ejercicios/intermedio/10_suma_vectores.psc`

```pseint
Algoritmo 10_suma_vectores
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir A, B, C, i Como Entero
    Dimension A(5)
    Dimension B(5)
    Dimension C(5)
    // Leer el primer vector.
    Para i <- 1 Hasta 5 Hacer
        Escribir "Digite A[", i, "]:"
        Leer A(i)
    FinPara
    // Leer el segundo vector.
    Para i <- 1 Hasta 5 Hacer
        Escribir "Digite B[", i, "]:"
        Leer B(i)
    FinPara
    // Sumar las posiciones correspondientes.
    Para i <- 1 Hasta 5 Hacer
        C(i) <- A(i) + B(i)
    FinPara
    Para i <- 1 Hasta 5 Hacer
        Escribir "C[", i, "] = ", C(i)
    FinPara
FinAlgoritmo
```
**Prueba de escritorio:** A=1,2,3,4,5; B=5,4,3,2,1. C=6,6,6,6,6.

### Llenar y mostrar matriz

**Archivo:** `ejercicios/avanzado/11_llenar_mostrar_matriz.psc`

```pseint
Algoritmo 11_llenar_mostrar_matriz
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir matriz, i, j Como Entero
    Dimension matriz(3,3)
    // i representa la fila y j representa la columna.
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            Escribir "Valor fila ", i, " columna ", j, ":"
            Leer matriz(i,j)
        FinPara
    FinPara
    Escribir "Matriz ingresada:"
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            Escribir Sin Saltar matriz(i,j), " "
        FinPara
        Escribir "" // Salto de linea al terminar cada fila.
    FinPara
FinAlgoritmo
```
**Prueba de escritorio:** Ingresar 1 a 9 en orden. Se muestra 1 2 3 / 4 5 6 / 7 8 9.

### Suma de filas y columnas

**Archivo:** `ejercicios/avanzado/12_suma_filas_columnas.psc`

```pseint
Algoritmo 12_suma_filas_columnas
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir matriz, i, j, suma Como Entero
    Dimension matriz(4,4)
    Para i <- 1 Hasta 4 Hacer
        Para j <- 1 Hasta 4 Hacer
            Escribir "Valor [", i, ",", j, "]:"
            Leer matriz(i,j)
        FinPara
    FinPara
    // Sumar las filas; reiniciar suma para cada fila.
    Para i <- 1 Hasta 4 Hacer
        suma <- 0
        Para j <- 1 Hasta 4 Hacer
            suma <- suma + matriz(i,j)
        FinPara
        Escribir "Suma fila ", i, ": ", suma
    FinPara
    // Sumar las columnas; cambiar el orden de los indices.
    Para j <- 1 Hasta 4 Hacer
        suma <- 0
        Para i <- 1 Hasta 4 Hacer
            suma <- suma + matriz(i,j)
        FinPara
        Escribir "Suma columna ", j, ": ", suma
    FinPara
FinAlgoritmo
```
**Prueba de escritorio:** Matriz con filas 1-4,5-8,9-12,13-16. Filas: 10,26,42,58. Columnas: 28,32,36,40.

### Buscar valor en matriz

**Archivo:** `ejercicios/avanzado/13_buscar_matriz.psc`

```pseint
Algoritmo 13_buscar_matriz
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir matriz, i, j, buscado Como Entero
    Definir encontrado Como Logico
    Dimension matriz(3,3)
    encontrado <- Falso
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            Escribir "Valor [", i, ",", j, "]:"
            Leer matriz(i,j)
        FinPara
    FinPara
    Escribir "Numero que desea buscar:"
    Leer buscado
    // Revisar cada posicion e informar todas las coincidencias.
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            Si matriz(i,j) = buscado Entonces
                Escribir "Encontrado en fila ", i, ", columna ", j
                encontrado <- Verdadero
            FinSi
        FinPara
    FinPara
    Si encontrado = Falso Entonces
        Escribir "El numero no se encuentra."
    FinSi
FinAlgoritmo
```
**Prueba de escritorio:** Matriz 2 5 7 / 4 5 9 / 1 3 5; buscar 5. Posiciones (1,2), (2,2), (3,3).

### Transponer matriz

**Archivo:** `ejercicios/avanzado/14_transponer_matriz.psc`

```pseint
Algoritmo 14_transponer_matriz
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir matriz, transpuesta, i, j Como Entero
    Dimension matriz(3,3)
    Dimension transpuesta(3,3)
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            Escribir "Valor [", i, ",", j, "]:"
            Leer matriz(i,j)
        FinPara
    FinPara
    // Intercambiar fila y columna al copiar el elemento.
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            transpuesta(j,i) <- matriz(i,j)
        FinPara
    FinPara
    Escribir "Matriz original:"
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            Escribir Sin Saltar matriz(i,j), " "
        FinPara
        Escribir ""
    FinPara
    Escribir "Matriz transpuesta:"
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 3 Hacer
            Escribir Sin Saltar transpuesta(i,j), " "
        FinPara
        Escribir ""
    FinPara
FinAlgoritmo
```
**Prueba de escritorio:** Original 1 2 3 / 4 5 6 / 7 8 9. Transpuesta 1 4 7 / 2 5 8 / 3 6 9.

### Contar primos en matriz

**Archivo:** `ejercicios/avanzado/15_contar_primos_matriz.psc`

```pseint
Algoritmo 15_contar_primos_matriz
    // Algoritmo resuelto y comentado para el Taller 3.
    Definir matriz, i, j, divisor, totalPrimos Como Entero
    Definir esPrimo Como Logico
    Dimension matriz(4,4)
    totalPrimos <- 0
    Para i <- 1 Hasta 4 Hacer
        Para j <- 1 Hasta 4 Hacer
            Escribir "Valor [", i, ",", j, "]:"
            Leer matriz(i,j)
        FinPara
    FinPara
    // Revisar todos los elementos de la matriz.
    Para i <- 1 Hasta 4 Hacer
        Para j <- 1 Hasta 4 Hacer
            esPrimo <- Verdadero
            // Los numeros menores que 2 no son primos.
            Si matriz(i,j) < 2 Entonces
                esPrimo <- Falso
            SiNo
                // Buscar divisores exactos entre 2 y el numero anterior.
                Para divisor <- 2 Hasta matriz(i,j)-1 Hacer
                    Si matriz(i,j) MOD divisor = 0 Entonces
                        esPrimo <- Falso
                    FinSi
                FinPara
            FinSi
            Si esPrimo Entonces
                totalPrimos <- totalPrimos + 1
            FinSi
        FinPara
    FinPara
    Escribir "Cantidad de numeros primos: ", totalPrimos
FinAlgoritmo
```
**Prueba de escritorio:** Filas 2,4,5,6 / 7,8,9,10 / 11,12,13,14 / 1,0,-3,17. Total: 6 primos.

## Reflexión final

Al desarrollar este taller comprendí que los arreglos permiten guardar varios datos del mismo tipo utilizando un solo nombre. Aprendí que los vectores tienen una dimensión y las matrices se organizan en filas y columnas. También practiqué ciclos para recorrer los datos y realizar operaciones como sumar, contar, buscar, invertir y comparar. Considero que los arreglos son importantes porque organizan la información, reducen la repetición de instrucciones y facilitan resolver problemas de programación.

## Indicaciones de entrega

1. Completa la fecha de entrega en esta portada.
2. Abre los archivos `.psc` con PSeInt y ejecuta cada algoritmo.
3. Comprueba los resultados con las pruebas de escritorio.
4. Sube esta carpeta con el nombre `taller3` a tu repositorio. No reemplaces la carpeta `taller2`.

**Nota:** el ejercicio de factoriales utiliza valores no negativos y resultados numéricos que pueden crecer rápidamente. Prueba primero con números pequeños. En las matrices se usa `Escribir Sin Saltar` para mostrar los elementos de una fila en la misma línea.
