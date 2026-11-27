# Taller 5: Pruebas de escritorio

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
