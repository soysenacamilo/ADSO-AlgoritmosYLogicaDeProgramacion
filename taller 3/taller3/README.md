# Taller 3: Manejo de Arrays en Lógica de Programación

**Estudiante:** Juan Camilo Jimenez Albor  
**Ficha:** 3601847  
**Fecha:** 20/11/2026  
**Asignatura:** Lógica de Programación

## Descripción
Desarrollo de los 15 ejercicios propuestos sobre arreglos (vectores y matrices). Cada ejercicio contiene el enunciado, un análisis de entradas/proceso/salidas, el algoritmo en PSeInt y una prueba de escritorio con datos concretos.

## Parte 1. Resumen teórico: ¿qué son los arreglos?

Un arreglo o *array* es una estructura que permite guardar varios datos del mismo tipo usando un solo nombre. En vez de crear muchas variables separadas, se utiliza una colección de posiciones. Por ejemplo, para guardar cinco notas se puede crear el arreglo `notas` y almacenar cada calificación en una posición diferente.

Cada posición se identifica mediante un **índice**, que indica dónde está guardado el dato. En los ejercicios de PSeInt de este taller se empieza a contar desde la posición 1. Por ejemplo, `notas(1)` representa la primera nota y `notas(5)` la quinta. El índice debe ser un número entero y debe estar dentro del tamaño definido para el arreglo.

Los arreglos son homogéneos, es decir, sus elementos deben ser del mismo tipo de dato, como enteros o reales. También tienen un nombre, una dimensión o tamaño y una cantidad definida de posiciones. En un vector, el tamaño corresponde al número de elementos; en una matriz, corresponde a la cantidad de filas multiplicada por la cantidad de columnas.

Existen dos tipos principales. Un **vector** es un arreglo unidimensional, parecido a una fila de casillas, y necesita un solo índice para acceder a un elemento: `numeros(i)`. Una **matriz** es un arreglo bidimensional, parecido a una tabla, y necesita dos índices: uno para la fila y otro para la columna, por ejemplo `tabla(i,j)`. Para recorrerlos se utilizan ciclos `Para`: en un vector normalmente se necesita un ciclo, mientras que en una matriz se utilizan dos ciclos anidados, uno para las filas y otro para las columnas.

Los arreglos son importantes porque permiten organizar información, recorrerla, buscar valores, realizar cálculos y evitar declarar una variable diferente para cada dato. Esta explicación sigue el enfoque de los capítulos 9 y 10 de *Lógica de programación*, de Omar Iván Trejos Buriticá, texto indicado en la guía del taller.

## Ejercicios

### Nivel básico: vectores
1. [Llenar y mostrar un vector](ejercicios/basico/ej01_llenar_mostrar_vector.md)
2. [Suma de un vector](ejercicios/basico/ej02_suma_vector.md)
3. [Contar números pares e impares](ejercicios/basico/ej03_contar_pares_impares.md)
4. [Promedio de un vector](ejercicios/basico/ej04_promedio_vector.md)
5. [Mostrar en orden inverso](ejercicios/basico/ej05_orden_inverso.md)

### Nivel intermedio: vectores con lógica
6. [Buscar el menor y su posición](ejercicios/intermedio/ej06_buscar_menor.md)
7. [Contar un valor específico](ejercicios/intermedio/ej07_contar_valor.md)
8. [Vector de factoriales](ejercicios/intermedio/ej08_vector_factoriales.md)
9. [Invertir un vector](ejercicios/intermedio/ej09_invertir_vector.md)
10. [Suma de dos vectores](ejercicios/intermedio/ej10_suma_vectores.md)

### Nivel avanzado: matrices
11. [Llenar y mostrar una matriz](ejercicios/avanzado/ej11_mostrar_matriz.md)
12. [Suma de filas y columnas](ejercicios/avanzado/ej12_suma_filas_columnas.md)
13. [Buscar un valor en una matriz](ejercicios/avanzado/ej13_buscar_matriz.md)
14. [Transponer una matriz](ejercicios/avanzado/ej14_transponer_matriz.md)
15. [Contar números primos en una matriz](ejercicios/avanzado/ej15_contar_primos_matriz.md)

## Reflexión final

Al realizar este taller aprendí que los arreglos permiten guardar y organizar varios datos del mismo tipo sin tener que crear una variable para cada uno. También comprendí que los vectores utilizan una posición y las matrices utilizan fila y columna. Los ciclos `Para` facilitan recorrer todas las posiciones para mostrar datos, sumarlos, compararlos o buscar información. Considero que los arreglos son importantes porque hacen que los programas sean más ordenados, fáciles de entender y útiles cuando se trabaja con muchos datos.

## Organización
- `ejercicios/basico`: ejercicios 1 al 5.
- `ejercicios/intermedio`: ejercicios 6 al 10.
- `ejercicios/avanzado`: ejercicios 11 al 15.
- `diagramas`: carpeta reservada para diagramas de flujo.

**Nota:** La guía fuente solicita pseudocódigo y pruebas de escritorio. No exige diagramas de flujo; por eso esta carpeta queda preparada sin agregar entregables que no aparecen en las instrucciones.
