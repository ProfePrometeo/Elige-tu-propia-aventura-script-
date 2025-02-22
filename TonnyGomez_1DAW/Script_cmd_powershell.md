# Migración de Script de CMD a PowerShell 

## 1. Objetivo

El objetivo del presente ejercicio consiste en migrar un script escrito en Batch (CMD) a PowerShell, 
asegurándose de mejorar su tolerancia a errores.

<br>

## 2. Cambios realizados:

1. Sustitución del comando `cls` por el cmdlet `Clear-Host`. Visual Studio Code nos advierte de esta circunstancia y nos ofrece la opción de cambiarlos.

2. Sustitución del comando `echo` por el cmdlet `Write-Host`. Su función es la misma: permite mostrar mensajes en la consola. VS Code nos ofrece la opción de cambiar los `echo` por `Write-Output`.

3. Sustitución del comando `set /p` por `$` para declarar las variables mediante las cuales haremos referencia a las funciones.

### Ejemplo: 

- Archivo .bat: `set /p choice1 ="Elige 1 [1] o 2 [2]: "`
- Archivo .ps1: `$tecla = [System.Console]::ReadKey().Key`

La declaración de la variable `set /p choice1` se cambia por `$choice`. Además, en el script el método `[System.Console]::ReadLine();` o `[System.Console]::ReadKey().Key` se realiza la misma función que `Read-Host`.

4. Cambiar el orden y la estructura del texto. En los archivos con formato `.bat` se utiliza el comando `goto` para saltar hacia otras partes del script. Sin embargo, en Powershell esto no es posible. Por este motivo, las `acciones` y ``lugares`` a los que se hace referencia en el script, las transformamos en funciones a los que hacemos referencia cuando, por ejemplo, se cumple la condición. 

### Ejemplo: 

- Archivo .bat: `set /p choice1 ="Elige 1 [1] o 2 [2]: " if "%choice1%"=="1" goto Biblioteca if "%choice1%"=="2" goto Bosque`
- Archivo .ps1:`do { ... $tecla = [System.Console]::ReadKey().Key if($tecla -eq 'Enter') {Regresar} else {Write-Host "No ha introducido la tecla indicada."}} while ($tecla -ne 'Enter');`

5. Utilizar los bucles while o do-while para asegurarnos de que se cumplan alguna de las condiciones del if-else y evitar errores en la ejecución del script.

<br>

## 3. Referencias:

1. Variables, Operadores y Funciones
https://pronetic.geeknetic.es/Guia/3000/Como-Crear-tu-Primer-Script-En-PowerShell.html
https://salyseo.com/programacion/windows-powershell-cmdlets-scripts/
https://salyseo.com/programacion/if-powershell-scripting/
https://trspos.com/llamar-a-una-funcion-dentro-de-powershell/
https://www.delftstack.com/es/howto/powershell/jump-around-to-certain-spots-in-powershell-script/

2. Cambio de color del texto y métodos de la clase System.Console
Copilot, al hacer búsquedas en el navegador Bing (navegador de Edge por defecto). 
https://www.bing.com/search?q=hacer%20un%20cambio%20de%20linea%20en%20powershell&qs=n&form=QBRE&sp=-1&ghc=1&lq=0&pq=hacer%20un%20cambio%20de%20linea%20en%20powershell&sc=8-38&sk=&cvid=057A289D93764E0AA0523118600763D9&ghsh=0&ghacc=0&ghpl=
https://www.bing.com/search?q=metodos%20de%20system%20console%20para%20controlar%20los%20caracteres%20introducidos%20por%20el%20usuario%20en%20powershell&qs=n&form=QBRE&sp=-1&lq=0&pq=metodos%20de%20system%20console%20para%20controlar%20los%20caracteres%20introducidos%20por%20el%20usuario%20en%20powershell&sc=0-97&sk=&cvid=7A25189ECC8944BA87A7F9620B98DC21&ghsh=0&ghacc=0&ghpl=



