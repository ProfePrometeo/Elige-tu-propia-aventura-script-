# Documetación de cambios

1. Cambios en el código
2. Alteración de parte del código
3. Solución de errores

## 1. Cambios en el código
 - Sustitución de ***cls*** por ***CLEAR-HOST***
 - Sustitución de ***echo*** por ***Write-Host***
 - Sustitución de los ***goto*** por llamadas directas a las funciones que hemos creado con **function nombre_funcion**
 - Sustitución de los ***color*** por ***Host.UI.RawUI.ForegroundColor*** para color de texto y ***Host.UI.RawUI.BackgroundColor*** para el fondo, con un $ delante del Host
 - Sustitución del ***set /p nombre_variable=frase_a_mostrar*** por ***$nombre_variable = (Read-Host "frase_a_mostrar")*** para la lectura de datos por teclado

 ## 2. Alteración de parte del código
 - El cambio de colores solo se ha realizado un cambio de color del texto de la terminal, porque causaba un efecto algo raro si se cambiaba también el fondo de la terminal cada vez que se realizaba un elección en el que el color de fondo se cambiaba con frecuencia

 ## 3. Solución de errores
### Error de funciones
- Descripción: Se nos muestra un error que nos dice que no se ha definido dicha función
- Motivo: Este error se dá porque el orden en que se ha creado las funciones es igual a como aparece en el ejercicio proporcionado
- Solución: Debemos crear las funciones en el orden inverso al que aparece en el ejercicio proporcionado para que no se nos dé el error, y así tener la función ya creada cuando le llamamos más adelante
### Error en la introducción de datos
- Descripción: La terminal se vuelve loco si no le introducimos ninguno de los valores que esperaba por teclado
- Motivo: Este error se dá porque no hemos realizado una validación de los datos introducidos por el usuario
- Solución: He creado un **while** con validación de los datos introducido por teclado por el que se seguirá pidiendo al usuaria que introduzca un valor siempre que no se el esperado, y cuando introduce uno de los valores esperados se sigue con la ejecución del programa


 