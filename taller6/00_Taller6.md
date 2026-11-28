# TALLER 6: TABLAS DE VERDAD Y OPERADORES LÓGICOS EN LÓGICA DE PROGRAMACIÓN

**Asignatura:** Lógica de Programación  
**Estudiante:** [Escribe tu nombre completo]  
**Instructor:** [Escribe el nombre del instructor]  
**Institución:** SENA  
**Fecha:** [Día / mes / año]

---


# Parte 1. Contextualización teórica: tablas de verdad

Una **tabla de verdad** es una herramienta de la lógica que permite representar de manera ordenada todos los valores posibles de una o varias proposiciones y el resultado que produce una expresión lógica. Cada proposición puede tomar uno de dos valores: **Verdadero (V)** o **Falso (F)**. Al combinar dos proposiciones existen cuatro posibilidades; con tres existen ocho, y así sucesivamente. Por eso, para *n* proposiciones independientes se necesitan \(2^n\) filas.

En lógica de programación, las tablas de verdad sirven para comprender, comprobar y diseñar las condiciones que utilizan los algoritmos para tomar decisiones. Por ejemplo, permiten verificar si un usuario puede ingresar a un sistema, si un estudiante cumple los requisitos para aprobar o si se debe activar una alarma. Antes de escribir una condición en pseudocódigo, se pueden revisar todos sus resultados posibles para evitar errores.

Los operadores lógicos básicos son **Y**, **O** y **NO**. El operador **Y** (conjunción o AND) produce Verdadero solamente cuando todas las condiciones que conecta son Verdaderas. El operador **O** (disyunción u OR) produce Verdadero cuando al menos una de las condiciones es Verdadera. Por su parte, **NO** (negación o NOT) invierte el valor de una condición: si era Verdadera pasa a Falsa, y si era Falsa pasa a Verdadera.

Cuando se combinan varios operadores, es importante respetar los paréntesis para identificar qué partes de la expresión se evalúan juntas. Por ejemplo, en `(A Y B) O C`, primero se determina el resultado de `A Y B` y después se aplica `O C`. Así, las tablas de verdad ayudan a visualizar el comportamiento de las expresiones, comprobar las decisiones de un algoritmo y construir programas más claros y confiables.

**Referencia de base:** Trejos Buriticá, Omar Iván, *Lógica de programación*, capítulo 4.4.3, según la referencia indicada en la guía del Taller 6. Este resumen también desarrolla los conceptos presentados en el documento de instrucciones del taller.


---

# Parte 2. Ejercicios propuestos resueltos


# Ejercicio 1: Operador Y: condiciones para conducir

**Nivel:** Básico

**Enunciado:** Una persona puede conducir si tiene 18 años o más Y tiene licencia de conducción.

**Variables lógicas:** A = edad >= 18, B = tiene_licencia.

**Expresión lógica:** `A Y B`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (edad >= 18) | B (tiene_licencia) | A Y B |
|---|---|---|
| F | F | F |
| F | V | F |
| V | F | F |
| V | V | V |

## Pseudocódigo

```text
Algoritmo Puede_Conducir
    Definir edad Como Entero
    Definir tiene_licencia, puede_conducir Como Logico

    Escribir "Digite su edad:"
    Leer edad
    Escribir "¿Tiene licencia? (Verdadero/Falso):"
    Leer tiene_licencia

    puede_conducir <- (edad >= 18) Y tiene_licencia

    Si puede_conducir Entonces
        Escribir "Puede conducir."
    SiNo
        Escribir "No puede conducir."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera únicamente cuando la persona tiene 18 años o más y además posee licencia. Si una de las dos condiciones es Falsa, el resultado es Falso.

---


# Ejercicio 2: Operador O: identificar el fin de semana

**Nivel:** Básico

**Enunciado:** Un día es fin de semana si es sábado O es domingo.

**Variables lógicas:** A = dia = sábado, B = dia = domingo.

**Expresión lógica:** `A O B`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (dia = sábado) | B (dia = domingo) | A O B |
|---|---|---|
| F | F | F |
| F | V | V |
| V | F | V |
| V | V | V |

## Pseudocódigo

```text
Algoritmo Es_Fin_De_Semana
    Definir dia Como Cadena
    Definir es_sabado, es_domingo, fin_de_semana Como Logico

    Escribir "Digite el día de la semana:"
    Leer dia

    es_sabado <- (Minusculas(dia) = "sabado")
    es_domingo <- (Minusculas(dia) = "domingo")
    fin_de_semana <- es_sabado O es_domingo

    Si fin_de_semana Entonces
        Escribir "Es fin de semana."
    SiNo
        Escribir "No es fin de semana."
    FinSi
FinAlgoritmo
```

## Conclusión

La expresión es Verdadera cuando al menos una de las condiciones se cumple: el día es sábado o el día es domingo. En los días restantes es Falsa. En el uso real, sábado y domingo no pueden ser el mismo día.

---


# Ejercicio 3: Operador NO: salir sin paraguas

**Nivel:** Básico

**Enunciado:** Se puede salir sin paraguas cuando NO está lloviendo.

**Variables lógicas:** A = esta_lloviendo.

**Expresión lógica:** `NO A`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (esta_lloviendo) | NO A |
|---|---|
| F | V |
| V | F |

## Pseudocódigo

```text
Algoritmo Salir_Sin_Paraguas
    Definir esta_lloviendo, salir_sin_paraguas Como Logico

    Escribir "¿Está lloviendo? (Verdadero/Falso):"
    Leer esta_lloviendo

    salir_sin_paraguas <- NO esta_lloviendo

    Si salir_sin_paraguas Entonces
        Escribir "Puede salir sin paraguas."
    SiNo
        Escribir "Es mejor llevar paraguas."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera cuando esta_lloviendo es Falso. El operador NO invierte el valor lógico de la condición.

---


# Ejercicio 4: Combinación de Y con NO: comprar en la tienda

**Nivel:** Básico

**Enunciado:** Puedo comprar en la tienda si tengo dinero Y la tienda NO está cerrada.

**Variables lógicas:** A = tengo_dinero, B = esta_cerrado.

**Expresión lógica:** `A Y NO B`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (tengo_dinero) | B (esta_cerrado) | NO B | A Y NO B |
|---|---|---|---|
| F | F | V | F |
| F | V | F | F |
| V | F | V | V |
| V | V | F | F |

## Pseudocódigo

```text
Algoritmo Comprar_En_Tienda
    Definir tengo_dinero, esta_cerrado, puedo_comprar Como Logico

    Escribir "¿Tiene dinero? (Verdadero/Falso):"
    Leer tengo_dinero
    Escribir "¿La tienda está cerrada? (Verdadero/Falso):"
    Leer esta_cerrado

    puedo_comprar <- tengo_dinero Y NO esta_cerrado

    Si puedo_comprar Entonces
        Escribir "Puede comprar en la tienda."
    SiNo
        Escribir "No puede comprar en la tienda."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera cuando tengo dinero es Verdadero y esta_cerrado es Falso. Si no tengo dinero o la tienda está cerrada, no puedo comprar.

---


# Ejercicio 5: Combinación de O con NO: salir a jugar

**Nivel:** Básico

**Enunciado:** Puedo salir a jugar si NO tengo tarea O si es fin de semana.

**Variables lógicas:** A = tengo_tarea, B = es_fin_de_semana.

**Expresión lógica:** `NO A O B`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (tengo_tarea) | B (es_fin_de_semana) | NO A | NO A O B |
|---|---|---|---|
| F | F | V | V |
| F | V | V | V |
| V | F | F | F |
| V | V | F | V |

## Pseudocódigo

```text
Algoritmo Salir_A_Jugar
    Definir tengo_tarea, es_fin_de_semana, puedo_salir Como Logico

    Escribir "¿Tiene tarea pendiente? (Verdadero/Falso):"
    Leer tengo_tarea
    Escribir "¿Es fin de semana? (Verdadero/Falso):"
    Leer es_fin_de_semana

    puedo_salir <- NO tengo_tarea O es_fin_de_semana

    Si puedo_salir Entonces
        Escribir "Puede salir a jugar."
    SiNo
        Escribir "No puede salir a jugar."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera si no tengo tarea o si es fin de semana, incluso si ambas situaciones ocurren. Solo es Falsa cuando tengo tarea y no es fin de semana.

---


# Ejercicio 6: Acceso a un sistema

**Nivel:** Intermedio

**Enunciado:** Un usuario puede acceder si su contraseña es correcta Y su cuenta NO está bloqueada.

**Variables lógicas:** A = password_correcta, B = cuenta_bloqueada.

**Expresión lógica:** `A Y NO B`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (password_correcta) | B (cuenta_bloqueada) | NO B | A Y NO B |
|---|---|---|---|
| F | F | V | F |
| F | V | F | F |
| V | F | V | V |
| V | V | F | F |

## Pseudocódigo

```text
Algoritmo Acceso_Sistema
    Definir password_correcta, cuenta_bloqueada, puede_acceder Como Logico

    Escribir "¿La contraseña es correcta? (Verdadero/Falso):"
    Leer password_correcta
    Escribir "¿La cuenta está bloqueada? (Verdadero/Falso):"
    Leer cuenta_bloqueada

    puede_acceder <- password_correcta Y NO cuenta_bloqueada

    Si puede_acceder Entonces
        Escribir "Acceso permitido."
    SiNo
        Escribir "Acceso denegado."
    FinSi
FinAlgoritmo
```

## Conclusión

El acceso es permitido únicamente si la contraseña es correcta y la cuenta no está bloqueada. Una contraseña incorrecta o una cuenta bloqueada hacen que la condición sea Falsa.

---


# Ejercicio 7: Descuento en una tienda

**Nivel:** Intermedio

**Enunciado:** Un cliente recibe descuento si su compra es mayor a $100 Y es cliente frecuente, O si su compra es mayor a $200.

**Variables lógicas:** A = compra_mayor_100, B = cliente_frecuente, C = compra_mayor_200.

**Expresión lógica:** `(A Y B) O C`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (compra_mayor_100) | B (cliente_frecuente) | C (compra_mayor_200) | A Y B | (A Y B) O C |
|---|---|---|---|---|
| F | F | F | F | F |
| F | F | V | F | V |
| F | V | F | F | F |
| F | V | V | F | V |
| V | F | F | F | F |
| V | F | V | F | V |
| V | V | F | V | V |
| V | V | V | V | V |

## Pseudocódigo

```text
Algoritmo Descuento_Tienda
    Definir compra Como Real
    Definir cliente_frecuente, recibe_descuento Como Logico

    Escribir "Digite el valor de la compra:"
    Leer compra
    Escribir "¿Es cliente frecuente? (Verdadero/Falso):"
    Leer cliente_frecuente

    recibe_descuento <- (compra > 100 Y cliente_frecuente) O (compra > 200)

    Si recibe_descuento Entonces
        Escribir "El cliente recibe descuento."
    SiNo
        Escribir "El cliente no recibe descuento."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera cuando la compra supera $100 y el cliente es frecuente, o cuando la compra supera $200 sin importar si es frecuente. Basta con que se cumpla uno de esos dos caminos.

---


# Ejercicio 8: Aprobación de un crédito

**Nivel:** Intermedio

**Enunciado:** Un crédito se aprueba si el solicitante tiene ingresos mayores a $1000 Y no tiene deudas, O si tiene un fiador.

**Variables lógicas:** A = ingresos_mayores_1000, B = sin_deudas, C = tiene_fiador.

**Expresión lógica:** `(A Y B) O C`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (ingresos_mayores_1000) | B (sin_deudas) | C (tiene_fiador) | A Y B | (A Y B) O C |
|---|---|---|---|---|
| F | F | F | F | F |
| F | F | V | F | V |
| F | V | F | F | F |
| F | V | V | F | V |
| V | F | F | F | F |
| V | F | V | F | V |
| V | V | F | V | V |
| V | V | V | V | V |

## Pseudocódigo

```text
Algoritmo Aprobar_Credito
    Definir ingresos Como Real
    Definir sin_deudas, tiene_fiador, credito_aprobado Como Logico

    Escribir "Digite los ingresos del solicitante:"
    Leer ingresos
    Escribir "¿No tiene deudas? (Verdadero/Falso):"
    Leer sin_deudas
    Escribir "¿Tiene fiador? (Verdadero/Falso):"
    Leer tiene_fiador

    credito_aprobado <- (ingresos > 1000 Y sin_deudas) O tiene_fiador

    Si credito_aprobado Entonces
        Escribir "Crédito aprobado."
    SiNo
        Escribir "Crédito no aprobado."
    FinSi
FinAlgoritmo
```

## Conclusión

El crédito se aprueba si los ingresos superan $1000 y el solicitante no tiene deudas, o si cuenta con un fiador. La presencia de un fiador hace verdadera la expresión aunque las otras dos condiciones sean falsas.

---


# Ejercicio 9: Validación de un triángulo

**Nivel:** Intermedio

**Enunciado:** Tres lados forman un triángulo si la suma de cada pareja de lados es mayor que el tercer lado.

**Variables lógicas:** A = a + b > c, B = a + c > b, C = b + c > a.

**Expresión lógica:** `A Y B Y C`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (a + b > c) | B (a + c > b) | C (b + c > a) | A Y B | (A Y B) Y C |
|---|---|---|---|---|
| F | F | F | F | F |
| F | F | V | F | F |
| F | V | F | F | F |
| F | V | V | F | F |
| V | F | F | F | F |
| V | F | V | F | F |
| V | V | F | V | F |
| V | V | V | V | V |

## Pseudocódigo

```text
Algoritmo Validar_Triangulo
    Definir a, b, c Como Real
    Definir condicion1, condicion2, condicion3 Como Logico

    Escribir "Digite el primer lado:"
    Leer a
    Escribir "Digite el segundo lado:"
    Leer b
    Escribir "Digite el tercer lado:"
    Leer c

    condicion1 <- (a + b > c)
    condicion2 <- (a + c > b)
    condicion3 <- (b + c > a)

    Si condicion1 Y condicion2 Y condicion3 Entonces
        Escribir "Los lados forman un triángulo."
    SiNo
        Escribir "Los lados no forman un triángulo."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición lógica es Verdadera únicamente cuando las tres desigualdades se cumplen al mismo tiempo. La tabla muestra las ocho combinaciones posibles de los tres resultados; en la aplicación con longitudes reales, los valores de A, B y C dependen de los lados ingresados.

---


# Ejercicio 10: Clasificación de un número

**Nivel:** Intermedio

**Enunciado:** Un número es especial si es positivo Y es par, O si es negativo Y es impar.

**Variables lógicas:** A = es_positivo, B = es_par, C = es_negativo, D = es_impar.

**Expresión lógica:** `(A Y B) O (C Y D)`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (es_positivo) | B (es_par) | C (es_negativo) | D (es_impar) | A Y B | C Y D | (A Y B) O (C Y D) |
|---|---|---|---|---|---|---|
| F | F | F | F | F | F | F |
| F | F | F | V | F | F | F |
| F | F | V | F | F | F | F |
| F | F | V | V | F | V | V |
| F | V | F | F | F | F | F |
| F | V | F | V | F | F | F |
| F | V | V | F | F | F | F |
| F | V | V | V | F | V | V |
| V | F | F | F | F | F | F |
| V | F | F | V | F | F | F |
| V | F | V | F | F | F | F |
| V | F | V | V | F | V | V |
| V | V | F | F | V | F | V |
| V | V | F | V | V | F | V |
| V | V | V | F | V | F | V |
| V | V | V | V | V | V | V |

## Pseudocódigo

```text
Algoritmo Numero_Especial
    Definir numero Como Entero
    Definir es_positivo, es_par, es_negativo, es_impar Como Logico
    Definir es_especial Como Logico

    Escribir "Digite un número entero:"
    Leer numero

    es_positivo <- (numero > 0)
    es_par <- (numero MOD 2 = 0)
    es_negativo <- (numero < 0)
    es_impar <- (numero MOD 2 <> 0)

    es_especial <- (es_positivo Y es_par) O (es_negativo Y es_impar)

    Si es_especial Entonces
        Escribir "El número es especial."
    SiNo
        Escribir "El número no es especial."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera cuando el número es positivo y par, o cuando es negativo e impar. El cero no cumple ninguna de las dos alternativas.

---


# Ejercicio 11: Sistema de login con múltiples condiciones

**Nivel:** Avanzado

**Enunciado:** Un usuario puede iniciar sesión si su usuario y contraseña son correctos, su cuenta no está bloqueada y ha verificado su correo electrónico O su teléfono.

**Variables lógicas:** A = usuario_correcto, B = password_correcta, C = cuenta_bloqueada, D = correo_verificado, E = telefono_verificado.

**Expresión lógica:** `A Y B Y NO C Y (D O E)`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (usuario_correcto) | B (password_correcta) | C (cuenta_bloqueada) | D (correo_verificado) | E (telefono_verificado) | NO C | D O E | A Y B | (A Y B) Y (NO C) | Resultado final |
|---|---|---|---|---|---|---|---|---|---|
| F | F | F | F | F | V | F | F | F | F |
| F | F | F | F | V | V | V | F | F | F |
| F | F | F | V | F | V | V | F | F | F |
| F | F | F | V | V | V | V | F | F | F |
| F | F | V | F | F | F | F | F | F | F |
| F | F | V | F | V | F | V | F | F | F |
| F | F | V | V | F | F | V | F | F | F |
| F | F | V | V | V | F | V | F | F | F |
| F | V | F | F | F | V | F | F | F | F |
| F | V | F | F | V | V | V | F | F | F |
| F | V | F | V | F | V | V | F | F | F |
| F | V | F | V | V | V | V | F | F | F |
| F | V | V | F | F | F | F | F | F | F |
| F | V | V | F | V | F | V | F | F | F |
| F | V | V | V | F | F | V | F | F | F |
| F | V | V | V | V | F | V | F | F | F |
| V | F | F | F | F | V | F | F | F | F |
| V | F | F | F | V | V | V | F | F | F |
| V | F | F | V | F | V | V | F | F | F |
| V | F | F | V | V | V | V | F | F | F |
| V | F | V | F | F | F | F | F | F | F |
| V | F | V | F | V | F | V | F | F | F |
| V | F | V | V | F | F | V | F | F | F |
| V | F | V | V | V | F | V | F | F | F |
| V | V | F | F | F | V | F | V | V | F |
| V | V | F | F | V | V | V | V | V | V |
| V | V | F | V | F | V | V | V | V | V |
| V | V | F | V | V | V | V | V | V | V |
| V | V | V | F | F | F | F | V | F | F |
| V | V | V | F | V | F | V | V | F | F |
| V | V | V | V | F | F | V | V | F | F |
| V | V | V | V | V | F | V | V | F | F |

## Pseudocódigo

```text
Algoritmo Login_Seguro
    Definir usuario_correcto, password_correcta Como Logico
    Definir cuenta_bloqueada, correo_verificado, telefono_verificado Como Logico
    Definir puede_iniciar Como Logico

    Escribir "¿El usuario es correcto? (Verdadero/Falso):"
    Leer usuario_correcto
    Escribir "¿La contraseña es correcta? (Verdadero/Falso):"
    Leer password_correcta
    Escribir "¿La cuenta está bloqueada? (Verdadero/Falso):"
    Leer cuenta_bloqueada
    Escribir "¿El correo está verificado? (Verdadero/Falso):"
    Leer correo_verificado
    Escribir "¿El teléfono está verificado? (Verdadero/Falso):"
    Leer telefono_verificado

    puede_iniciar <- usuario_correcto Y password_correcta Y NO cuenta_bloqueada Y (correo_verificado O telefono_verificado)

    Si puede_iniciar Entonces
        Escribir "Inicio de sesión permitido."
    SiNo
        Escribir "No se puede iniciar sesión."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera cuando el usuario y la contraseña son correctos, la cuenta no está bloqueada y al menos uno de los dos medios de verificación (correo o teléfono) está confirmado. Si falla cualquiera de los requisitos obligatorios, el resultado es Falso.

---


# Ejercicio 12: Elegibilidad para una beca

**Nivel:** Avanzado

**Enunciado:** Un estudiante es elegible si tiene promedio mayor o igual a 8.5 y no tiene materias reprobadas, O si tiene promedio mayor o igual a 9.0 y al menos dos publicaciones.

**Variables lógicas:** A = promedio_ge_8_5, B = sin_reprobadas, C = promedio_ge_9_0, D = tiene_publicaciones.

**Expresión lógica:** `(A Y B) O (C Y D)`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (promedio_ge_8_5) | B (sin_reprobadas) | C (promedio_ge_9_0) | D (tiene_publicaciones) | A Y B | C Y D | (A Y B) O (C Y D) |
|---|---|---|---|---|---|---|
| F | F | F | F | F | F | F |
| F | F | F | V | F | F | F |
| F | F | V | F | F | F | F |
| F | F | V | V | F | V | V |
| F | V | F | F | F | F | F |
| F | V | F | V | F | F | F |
| F | V | V | F | F | F | F |
| F | V | V | V | F | V | V |
| V | F | F | F | F | F | F |
| V | F | F | V | F | F | F |
| V | F | V | F | F | F | F |
| V | F | V | V | F | V | V |
| V | V | F | F | V | F | V |
| V | V | F | V | V | F | V |
| V | V | V | F | V | F | V |
| V | V | V | V | V | V | V |

## Pseudocódigo

```text
Algoritmo Elegibilidad_Beca
    Definir promedio Como Real
    Definir materias_reprobadas, cantidad_publicaciones Como Entero
    Definir promedio_ge_8_5, sin_reprobadas, promedio_ge_9_0 Como Logico
    Definir tiene_publicaciones, es_elegible Como Logico

    Escribir "Digite el promedio:"
    Leer promedio
    Escribir "Digite la cantidad de materias reprobadas:"
    Leer materias_reprobadas
    Escribir "Digite la cantidad de publicaciones:"
    Leer cantidad_publicaciones

    promedio_ge_8_5 <- (promedio >= 8.5)
    sin_reprobadas <- (materias_reprobadas = 0)
    promedio_ge_9_0 <- (promedio >= 9.0)
    tiene_publicaciones <- (cantidad_publicaciones >= 2)

    es_elegible <- (promedio_ge_8_5 Y sin_reprobadas) O (promedio_ge_9_0 Y tiene_publicaciones)

    Si es_elegible Entonces
        Escribir "El estudiante es elegible para la beca."
    SiNo
        Escribir "El estudiante no es elegible para la beca."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera si se cumple la primera alternativa (promedio de al menos 8.5 y ninguna materia reprobada) o la segunda (promedio de al menos 9.0 y dos o más publicaciones). También es Verdadera si ambas alternativas se cumplen.

---


# Ejercicio 13: Control de acceso a una sala VIP

**Nivel:** Avanzado

**Enunciado:** Una persona puede entrar si tiene invitación Y es mayor de edad, O si es socio del club Y no está acompañado de menores.

**Variables lógicas:** A = tiene_invitacion, B = es_mayor, C = es_socio, D = acompanado_menores.

**Expresión lógica:** `(A Y B) O (C Y NO D)`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (tiene_invitacion) | B (es_mayor) | C (es_socio) | D (acompanado_menores) | A Y B | NO D | C Y NO D | Resultado final |
|---|---|---|---|---|---|---|---|
| F | F | F | F | F | V | F | F |
| F | F | F | V | F | F | F | F |
| F | F | V | F | F | V | V | V |
| F | F | V | V | F | F | F | F |
| F | V | F | F | F | V | F | F |
| F | V | F | V | F | F | F | F |
| F | V | V | F | F | V | V | V |
| F | V | V | V | F | F | F | F |
| V | F | F | F | F | V | F | F |
| V | F | F | V | F | F | F | F |
| V | F | V | F | F | V | V | V |
| V | F | V | V | F | F | F | F |
| V | V | F | F | V | V | F | V |
| V | V | F | V | V | F | F | V |
| V | V | V | F | V | V | V | V |
| V | V | V | V | V | F | F | V |

## Pseudocódigo

```text
Algoritmo Acceso_Sala_VIP
    Definir tiene_invitacion, es_mayor, es_socio Como Logico
    Definir acompanado_menores, puede_entrar Como Logico

    Escribir "¿Tiene invitación? (Verdadero/Falso):"
    Leer tiene_invitacion
    Escribir "¿Es mayor de edad? (Verdadero/Falso):"
    Leer es_mayor
    Escribir "¿Es socio del club? (Verdadero/Falso):"
    Leer es_socio
    Escribir "¿Está acompañado de menores? (Verdadero/Falso):"
    Leer acompanado_menores

    puede_entrar <- (tiene_invitacion Y es_mayor) O (es_socio Y NO acompanado_menores)

    Si puede_entrar Entonces
        Escribir "Puede entrar a la sala VIP."
    SiNo
        Escribir "No puede entrar a la sala VIP."
    FinSi
FinAlgoritmo
```

## Conclusión

La condición es Verdadera si tiene invitación y es mayor de edad, o si es socio y no está acompañado de menores. Cualquiera de las dos alternativas permite el ingreso.

---


# Ejercicio 14: Validación de una contraseña segura

**Nivel:** Avanzado

**Enunciado:** Una contraseña es segura si tiene al menos 8 caracteres, contiene al menos una mayúscula, al menos un número y al menos un carácter especial.

**Variables lógicas:** A = longitud_ok, B = tiene_mayuscula, C = tiene_numero, D = tiene_especial.

**Expresión lógica:** `A Y B Y C Y D`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (longitud_ok) | B (tiene_mayuscula) | C (tiene_numero) | D (tiene_especial) | A Y B | (A Y B) Y C | A Y B Y C Y D |
|---|---|---|---|---|---|---|
| F | F | F | F | F | F | F |
| F | F | F | V | F | F | F |
| F | F | V | F | F | F | F |
| F | F | V | V | F | F | F |
| F | V | F | F | F | F | F |
| F | V | F | V | F | F | F |
| F | V | V | F | F | F | F |
| F | V | V | V | F | F | F |
| V | F | F | F | F | F | F |
| V | F | F | V | F | F | F |
| V | F | V | F | F | F | F |
| V | F | V | V | F | F | F |
| V | V | F | F | V | F | F |
| V | V | F | V | V | F | F |
| V | V | V | F | V | V | F |
| V | V | V | V | V | V | V |

## Pseudocódigo

```text
Algoritmo Validar_Contrasena
    Definir contrasena Como Cadena
    Definir longitud_ok, tiene_mayuscula, tiene_numero, tiene_especial Como Logico
    Definir es_segura Como Logico

    Escribir "Digite la contraseña:"
    Leer contrasena

    longitud_ok <- (Longitud(contrasena) >= 8)
    tiene_mayuscula <- ExisteMayuscula(contrasena)
    tiene_numero <- ExisteNumero(contrasena)
    tiene_especial <- ExisteCaracterEspecial(contrasena)

    es_segura <- longitud_ok Y tiene_mayuscula Y tiene_numero Y tiene_especial

    Si es_segura Entonces
        Escribir "La contraseña es segura."
    SiNo
        Escribir "La contraseña no cumple todos los requisitos."
    FinSi
FinAlgoritmo

// Nota: ExisteMayuscula, ExisteNumero y ExisteCaracterEspecial
// representan funciones auxiliares que deben revisar cada carácter.
```

## Conclusión

La condición es Verdadera únicamente cuando se cumplen los cuatro requisitos simultáneamente. Si falta longitud, mayúscula, número o carácter especial, la contraseña no se considera segura.

---


# Ejercicio 15: Sistema de alerta de temperatura

**Nivel:** Avanzado

**Enunciado:** Se activa una alarma si la temperatura es mayor a 40 °C Y la humedad es mayor al 80 %, O si la temperatura es menor a 0 °C Y hay viento fuerte.

**Variables lógicas:** A = temp_mayor_40, B = humedad_mayor_80, C = temp_menor_0, D = viento_fuerte.

**Expresión lógica:** `(A Y B) O (C Y D)`

## Tabla de verdad completa

V = Verdadero; F = Falso.

| A (temp_mayor_40) | B (humedad_mayor_80) | C (temp_menor_0) | D (viento_fuerte) | A Y B | C Y D | (A Y B) O (C Y D) |
|---|---|---|---|---|---|---|
| F | F | F | F | F | F | F |
| F | F | F | V | F | F | F |
| F | F | V | F | F | F | F |
| F | F | V | V | F | V | V |
| F | V | F | F | F | F | F |
| F | V | F | V | F | F | F |
| F | V | V | F | F | F | F |
| F | V | V | V | F | V | V |
| V | F | F | F | F | F | F |
| V | F | F | V | F | F | F |
| V | F | V | F | F | F | F |
| V | F | V | V | F | V | V |
| V | V | F | F | V | F | V |
| V | V | F | V | V | F | V |
| V | V | V | F | V | F | V |
| V | V | V | V | V | V | V |

## Pseudocódigo

```text
Algoritmo Alerta_Temperatura
    Definir temperatura, humedad Como Real
    Definir viento_fuerte, temp_mayor_40, humedad_mayor_80 Como Logico
    Definir temp_menor_0, activar_alarma Como Logico

    Escribir "Digite la temperatura en grados Celsius:"
    Leer temperatura
    Escribir "Digite la humedad en porcentaje:"
    Leer humedad
    Escribir "¿Hay viento fuerte? (Verdadero/Falso):"
    Leer viento_fuerte

    temp_mayor_40 <- (temperatura > 40)
    humedad_mayor_80 <- (humedad > 80)
    temp_menor_0 <- (temperatura < 0)

    activar_alarma <- (temp_mayor_40 Y humedad_mayor_80) O (temp_menor_0 Y viento_fuerte)

    Si activar_alarma Entonces
        Escribir "ALERTA: condiciones de temperatura extremas."
    SiNo
        Escribir "No se activa la alarma."
    FinSi
FinAlgoritmo
```

## Conclusión

La alarma se activa si se presenta calor superior a 40 °C junto con humedad superior al 80 %, o frío inferior a 0 °C junto con viento fuerte. Si ninguna de las dos combinaciones ocurre, la condición es Falsa.

---

## Reflexión final

Al desarrollar este taller aprendí que las tablas de verdad permiten analizar de forma organizada todas las posibilidades de una condición lógica y comprender cómo trabajan los operadores Y, O y NO. También entendí que una condición compuesta puede cambiar su resultado según los valores de cada variable y que los paréntesis ayudan a evaluar correctamente las expresiones. Considero que son importantes al construir algoritmos porque permiten comprobar las decisiones antes de programarlas, detectar errores y lograr que el programa responda de manera adecuada ante diferentes situaciones.
