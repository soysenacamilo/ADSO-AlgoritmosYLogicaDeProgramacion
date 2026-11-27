# Taller 5: Pruebas de escritorio

### Ejercicio 5. Validar contraseña con 3 intentos

**Contraseña correcta:** `"12345"`.

#### Pseudocódigo

```text
Algoritmo Login                                  // Nombre del algoritmo.
Variables                                        // Declara las variables.
    Cadena: password                             // Guarda la contraseña completa.
    Entero: intentos                             // Cuenta los intentos incorrectos.
    Lógico: acceso                                // Indica si el acceso fue autorizado.
Inicio                                           // Comienza la ejecución.
    intentos = 0                                  // Inicializa los intentos fallidos.
    acceso = Falso                                 // El acceso aún no está autorizado.
    Mientras intentos < 3 Y NO acceso Hacer       // Repite si quedan intentos y no hay acceso.
        Escriba "Digite la contraseña:"            // Solicita la contraseña.
        Lea password                              // Lee la contraseña ingresada.
        Si password = "12345" Entonces             // Compara con la contraseña correcta.
            acceso = Verdadero                     // Autoriza el acceso.
        Sino                                       // Se ejecuta si la contraseña es incorrecta.
            intentos = intentos + 1                // Aumenta el contador de fallos.
            Escriba "Contraseña incorrecta. Intento ", intentos, " de 3" // Informa el intento.
        Fin_Si                                     // Cierra la condición.
    Fin_Mientras                                   // Termina al autorizar o llegar a tres fallos.
    Si acceso Entonces                             // Comprueba si se autorizó el acceso.
        Escriba "Bienvenido"                       // Muestra el mensaje de bienvenida.
    Sino                                           // Si no se autorizó.
        Escriba "Cuenta bloqueada"                 // Muestra el mensaje de bloqueo.
    Fin_Si                                         // Cierra la condición.
Fin                                              // Termina el algoritmo.
```

#### Caso 1. Contraseña correcta en el primer intento

**Entrada:** `"12345"`.

| Paso | Instrucción / evaluación | password | intentos | acceso | Pantalla |
|---:|---|---|---:|---|---|
| 1 | Inicializa variables | — | 0 | Falso | Vacía |
| 2 | Evalúa condición del Mientras | — | 0 | Falso | Entra al ciclo |
| 3 | Solicita contraseña | — | 0 | Falso | Digite la contraseña: |
| 4 | Lee contraseña | 12345 | 0 | Falso | Digite la contraseña: |
| 5 | Compara con contraseña correcta | 12345 | 0 | Falso | Condición verdadera |
| 6 | `acceso = Verdadero` | 12345 | 0 | Verdadero | Sin mensaje nuevo |
| 7 | Vuelve a evaluar el Mientras | 12345 | 0 | Verdadero | Condición falsa, sale |
| 8 | Evalúa `Si acceso` | 12345 | 0 | Verdadero | Bienvenido |
| 9 | Fin | 12345 | 0 | Verdadero | Bienvenido |

**Conclusión del caso 1:** Aparece **“Bienvenido”** porque la contraseña es correcta en el primer intento.

#### Caso 2. Tres contraseñas incorrectas

**Entradas:** `"111"`, `"222"`, `"333"`.

| Paso | Instrucción / evaluación | password | intentos | acceso | Pantalla |
|---:|---|---|---:|---|---|
| 1 | Inicializa variables | — | 0 | Falso | Vacía |
| 2 | Solicita y lee primer valor | 111 | 0 | Falso | Digite la contraseña: |
| 3 | Contraseña incorrecta; aumenta contador | 111 | 1 | Falso | Contraseña incorrecta. Intento 1 de 3 |
| 4 | Solicita y lee segundo valor | 222 | 1 | Falso | Digite la contraseña: |
| 5 | Contraseña incorrecta; aumenta contador | 222 | 2 | Falso | Contraseña incorrecta. Intento 2 de 3 |
| 6 | Solicita y lee tercer valor | 333 | 2 | Falso | Digite la contraseña: |
| 7 | Contraseña incorrecta; aumenta contador | 333 | 3 | Falso | Contraseña incorrecta. Intento 3 de 3 |
| 8 | Evalúa `3 < 3 Y NO Falso` | 333 | 3 | Falso | Condición falsa, sale |
| 9 | Evalúa `Si acceso` | 333 | 3 | Falso | Cuenta bloqueada |
| 10 | Fin | 333 | 3 | Falso | Cuenta bloqueada |

**Conclusión del caso 2:** Aparece **“Cuenta bloqueada”** después de tres intentos incorrectos.

**Conclusión general:** Sí cumple el objetivo. El algoritmo permite entrar cuando la contraseña es correcta y detiene el proceso después de tres fallos.

---
