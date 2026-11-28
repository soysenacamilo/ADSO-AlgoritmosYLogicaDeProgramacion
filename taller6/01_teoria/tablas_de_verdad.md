# Parte 1. Contextualización teórica: tablas de verdad

Una **tabla de verdad** es una herramienta de la lógica que permite representar de manera ordenada todos los valores posibles de una o varias proposiciones y el resultado que produce una expresión lógica. Cada proposición puede tomar uno de dos valores: **Verdadero (V)** o **Falso (F)**. Al combinar dos proposiciones existen cuatro posibilidades; con tres existen ocho, y así sucesivamente. Por eso, para *n* proposiciones independientes se necesitan \(2^n\) filas.

En lógica de programación, las tablas de verdad sirven para comprender, comprobar y diseñar las condiciones que utilizan los algoritmos para tomar decisiones. Por ejemplo, permiten verificar si un usuario puede ingresar a un sistema, si un estudiante cumple los requisitos para aprobar o si se debe activar una alarma. Antes de escribir una condición en pseudocódigo, se pueden revisar todos sus resultados posibles para evitar errores.

Los operadores lógicos básicos son **Y**, **O** y **NO**. El operador **Y** (conjunción o AND) produce Verdadero solamente cuando todas las condiciones que conecta son Verdaderas. El operador **O** (disyunción u OR) produce Verdadero cuando al menos una de las condiciones es Verdadera. Por su parte, **NO** (negación o NOT) invierte el valor de una condición: si era Verdadera pasa a Falsa, y si era Falsa pasa a Verdadera.

Cuando se combinan varios operadores, es importante respetar los paréntesis para identificar qué partes de la expresión se evalúan juntas. Por ejemplo, en `(A Y B) O C`, primero se determina el resultado de `A Y B` y después se aplica `O C`. Así, las tablas de verdad ayudan a visualizar el comportamiento de las expresiones, comprobar las decisiones de un algoritmo y construir programas más claros y confiables.

**Referencia de base:** Trejos Buriticá, Omar Iván, *Lógica de programación*, capítulo 4.4.3, según la referencia indicada en la guía del Taller 6. Este resumen también desarrolla los conceptos presentados en el documento de instrucciones del taller.
