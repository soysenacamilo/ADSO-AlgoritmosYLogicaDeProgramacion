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
