# Ejercicio 8. Calcular el salario neto

**Tipos de datos y justificación**

- `salario_bruto`: Real, porque un salario puede incluir centavos.
- `porcentaje_descuento`: Real, porque puede ser decimal.
- `descuento`: Real, porque es un valor monetario.
- `salario_neto`: Real, porque el resultado puede tener centavos.

**Pseudocódigo**

```text
// Identifica el nombre del algoritmo.
Algoritmo Salario_Neto
// Declara las variables que se utilizarán.
Variables
    // Indica el tipo de dato de las variables.
    Real: salario_bruto, porcentaje_descuento, descuento, salario_neto
// Comienza la ejecución del algoritmo.
Inicio
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Digite el salario bruto:"
    // Recibe el dato ingresado por el usuario.
    Lea salario_bruto
    // Muestra un mensaje o el resultado en pantalla.
    Escriba "Digite el porcentaje de descuento (por ejemplo, 10 para 10%):"
    // Recibe el dato ingresado por el usuario.
    Lea porcentaje_descuento

    // Comprueba la condición antes de decidir qué camino seguir.
    Si porcentaje_descuento >= 0 Y porcentaje_descuento <= 100 Entonces
        // Convierte el porcentaje a una fracción decimal.
        descuento = salario_bruto * (porcentaje_descuento / 100.0)
        // Calcula y guarda el valor de la expresión.
        salario_neto = salario_bruto - descuento
        // Muestra un mensaje o el resultado en pantalla.
        Escriba "Descuento aplicado: ", descuento
        // Muestra un mensaje o el resultado en pantalla.
        Escriba "Salario neto: ", salario_neto
    // Indica qué hacer cuando la condición anterior es falsa.
    Sino
        // Muestra un mensaje o el resultado en pantalla.
        Escriba "Porcentaje inválido. Debe estar entre 0 y 100."
    // Cierra la estructura condicional.
    Fin_Si
// Finaliza el algoritmo.
Fin
```

**Prueba de escritorio**

| Salario bruto | Descuento ingresado | Valor descontado | Salario neto |
|---:|---:|---:|---:|
| 2,000,000 | 10 | 200,000 | 1,800,000 |

**Resultado:** si el usuario escribe `10`, el algoritmo lo interpreta como 10% y lo divide entre 100. Así se evita confundir `10` con `0.10`.

---
