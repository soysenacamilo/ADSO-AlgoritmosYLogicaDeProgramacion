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
