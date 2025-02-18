# Migración de Script de CMD a PowerShell
Sustitución de cls por CLEAR-HOST
Sustitución de echo por Write-Host
Sustitución de los goto por llamadas directas a las funciones que hemos creado con function nombre_funcion
Sustitución de los color por [console]::ForegroundColor = 'elegir_color'
Sustitución del set /p nombre_variable=frase_a_mostrar por $nombre_variable = (Read-Host "frase_a_mostrar") para la lectura de datos por teclado

## Optimización de errores
He creado un condicional para que el usuario deba elegir las opciones solicitadas por el programa (1 o 2), en la primera elección utilizo un do-while para que retorne hasta que el usuario ingrese un número valido, a partir de esa primera fase el usuario esta obligado a marcar una de las 2 opciones o será fulminantemente eliminado del juego, teniendo que volver a empezar.