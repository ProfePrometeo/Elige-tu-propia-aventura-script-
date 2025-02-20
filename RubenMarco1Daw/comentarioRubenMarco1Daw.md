# Observaciones sobre el Código PowerShell: "El Destino de Eldoria"

Este script está diseñado en PowerShell comvertido desde un .bat, donde se han corregido las variables y actualizado los valores.
Estos son los siguientes puntos claves a tener en cuenta:

## 1. **Control de errores**
   - El script utiliza `$ErrorActionPreference = "Stop"`, lo que significa que PowerShell se detendrá inmediatamente si ocurre algún error durante la ejecución. Esto asegura que el juego no continúe en caso de un fallo, esta es buena practica para corregir el codigo.

## 2. **Estructura del código**
   - El código está basado en funciones que corresponden a las diferentes etapas de la aventura.
   - La función principal `Inicio` es la que inicia el juego, mostrando una introducción y ofreciendo las primeras opciones al jugador.

## 3. **Juego**
   - Se usan las funciones `Mostrar-Opcion` y `Obtener-Eleccion` para interactuar con el usuario. `Mostrar-Opcion` muestra las opciones posibles, mientras que `Obtener-Eleccion` espera y valida la entrada del usuario, asegurando que el jugador solo pueda elegir entre opciones válidas (1 o 2).
   - el codigo asegura que el jugador no pueda elegir opciones fuera de las opciones disponibles implemendo mediante bucles y condiciones,  lo que previene errores de ejecución.

## 4. **Finales**
   - El juego está diseñado de manera que depende de las elecciones del jugador. Según lo que el jugador elija, se ejecutarán diferentes funciones y se llegarán a distintos finales.
   - Existen cuatro finales posibles: dos en el que el jugador pierde (Final1 y Final2) y dos finales donde gana (Final3 y Final4).

## 6. **Código**
   - El uso de `cls` permite limpiar la pantalla entre las secciones, lo que mejora el flujo del juego.
   - La función `Pause` se usa al final de los finales para que el jugador pueda ver el resultado antes de termine.
   - `Exit` es llamado al final de cada función de finalización, lo que termina la ejecución.
   - `ForegroundColor` para cambiar el color de los textos 
   - en cada funcion existen `condicionales if/else` los cuales te llevan a otra funcion 


