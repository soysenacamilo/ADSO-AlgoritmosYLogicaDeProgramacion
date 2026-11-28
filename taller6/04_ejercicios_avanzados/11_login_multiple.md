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
