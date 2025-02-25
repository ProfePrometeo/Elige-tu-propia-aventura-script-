EL DESTINO DE ELDORIA

1️⃣ Conversión del Script de CMD a PowerShell

- El script original estaba escrito en Batch (CMD) y se ha migrado completamente a PowerShell.

2️⃣ Implementación de Tolerancia a Errores

- Se mejora la validación de entrada con do { ... } until ($choice -match "^[12]$"), asegurando que el jugador solo pueda ingresar opciones válidas.
- Corrección de errores que podrían hacer que el juego se bloquee o termine inesperadamente.

3️⃣ Aplicación de Colores para Mejorar la Experiencia

- Se han aplicado colores únicos a cada función para una mejora visual y de legibilidad con $host.UI.RawUI.ForegroundColor

Menú Principal & Introducción → Cyan
Biblioteca → Magenta
Bosque → DarkGreen
Torre del Eco → Yellow

Finales:
Destino Sellado → Gray
El Héroe de Eldoria → Green
El Nuevo Señor Oscuro → Magenta
El Fin del Reino → DarkRed
Esto hace que cada sección del juego sea fácilmente distinguible visualmente.

4️⃣ Organización del Código y Mejor Estructura

- Se dividió el juego en funciones bien definidas, eliminando GOTO y mejorando la lectura del código.
- Se cambia cls por Clear-Host al inicio de cada función para limpiar la pantalla antes de mostrar el nuevo contenido.
- Se restauró el color blanco (White) al final de cada función para evitar que los colores se propaguen accidentalmente.

5️⃣ Corrección y Compleción de Funciones Faltantes

- He revisado que todas las rutas de elección en el juego fueran coherentes y sin errores.
