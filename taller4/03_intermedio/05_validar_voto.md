# Ejercicio 5. Validar si una persona puede votar

**Tipos de datos y justificación**

- `edad`: Entero, porque se expresa en años completos en este ejercicio.
- `puede_votar`: Lógico, porque representa si se cumple o no la condición de edad.

**Pseudocódigo**

```text
// Identifica el nombre del algoritmo.
Algoritmo Validar_Voto
// Declara las variables que se utilizarán.
Variables
    // Indica el tipo de dato de las variables.
    Entero: edad
    // Indica el tipo de dato de las variables.
    Logico: puede_votar
// Comienza la ejecución del algoritmo.
Inicio
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Digite su edad:"
    // Recibe el dato ingresado por el usuario.
    Lea edad

    // Calcula y guarda el valor de la expresión.
    puede_votar = (edad >= 18)

    // Comprueba la condición antes de decidir qué camino seguir.
    Si puede_votar Entonces
        // Muestra un mensaje o el resultado en pantalla.
        Escriba "Puede votar por cumplir la edad indicada."
    // Indica qué hacer cuando la condición anterior es falsa.
    Sino
        // Muestra un mensaje o el resultado en pantalla.
        Escriba "No cumple la edad indicada para votar."
    // Cierra la estructura condicional.
    Fin_Si
// Finaliza el algoritmo.
Fin
```

**Prueba de escritorio**

| Edad | puede_votar | Mensaje |
|---:|---|---|
| 18 | Verdadero | Puede votar por cumplir la edad indicada |
| 16 | Falso | No cumple la edad indicada para votar |

**Resultado:** el algoritmo valida únicamente el requisito de edad planteado en el ejercicio; no verifica otros requisitos legales.

---
