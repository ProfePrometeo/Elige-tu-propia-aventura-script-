# Conversion de BATCH a PowerShell

## Objetivo
Convertir el script proporcionado (.bat) al formato compatible con PowerShell (.ps1). 

### Cambios a realizar:

1. Borrar consola
   
    Hay que cambiar `cls` por `Clear-Host`.

    Referencias: 
    - Ayuda de extension de vsCode

<br>

2. Imprimir en consola
   
   Los `echo + texto` se sustituyen por `Write-Host + "texto"`.

    Ejemplo:
    
    .bat -> `echo Donde comienzas tu busqueda` 

    .ps1 -> `Write-Host "Donde comienzas tu busqueda"`

    Referencias: 
    - [Powershell-vs-Bash](https://jesustorres.hashnode.dev/powershell-vs-bash-para-usuarios-de-linux?utm_source=chatgpt.com)

<br>

3. Introducir/Leer datos
   
   Para que el usuario pueda introducir datos y estos sean asignados a variables, en lugar de usar `set /p + variable + texto`, se utiliza `$variable = Read-Host + texto`.

    Ejemplo:
    
    .bat -> `set /p choice1=Elige 1 o 2: ` 

    .ps1 -> `$choice1 = Read-Host "Elige 1 o 2"`

    Referencias: 
    - [LearnMicrosoft-PowerShell-Utility](https://learn.microsoft.com/es-es/powershell/module/microsoft.powershell.utility/read-host?view=powershell-7.5)

<br>

4. Comparar variables
   
   La comparación de variables en .bat tiene la estructura: `"%variable%"=="valorComparado"`, mientras  que en .ps1 se usa `$variable -eq "valorComparado"`. En caso de hacer varias comparaciones en una condicion, usaremos el comparador **-and**.

    Ejemplo:
    
    .bat -> `if "%choice2%"=="1"` 

    .ps1 -> `$choice1 -ne "1"`  |  `$choice1 -ne "1" -and $choice1 -ne "2"`

    Referencias:
    - [LearnMicrosoft-PowerShell-Comparison](https://learn.microsoft.com/es-es/powershell/module/microsoft.powershell.core/about/about_comparison_operators?view=powershell-7.5)

    - [LearnMicrosoft-PowerShell-Operators](https://learn.microsoft.com/es-es/powershell/module/microsoft.powershell.core/about/about_operators?view=powershell-7.5)

<br>

5. Funciones
   
   Las funciones que hay en el codigo incial funcionan de la siguiente manera: 
    ``` bat                                     
    condicion                                 REM Se evalua una condicion (por ejemplo un if)         
    goto nombreFuncion                        REM Si se cumple, el programa se dirige a la funcion indicada  

    :nombreFuncion                            REM La función se puede usar/llamar antes de ser definida
    *contenido de la funcion*                 REM Se ejecuta el contenido de la función
    ``` 

    Pero para que funcionen en powerShell hay que definir la funcion antes de usarla y usar la estructura propia de esta, por ejemplo:
    ``` ps1
    function nombreFuncion{                   # Se define la función y su nombre    
        *contenido de la funcion*             # Se introduce el contenido de la función
    }

    if (condicion) {                          # Se evalua una condicion (por ejemplo un if) 
        nombreFuncion                         # Se invoca la función (Ya tiene que existir previamente)
    }
    ```

    Ejemplo:
    
    .bat:
     ``` bat
    if "%choice1%"=="1" goto Biblioteca

    :Biblioteca
    cls
    color 0E
    echo En la biblioteca, encuentras un pergamino sobre el Cristal del Alba y la Torre del Eco.  
    echo Una figura encapuchada te observa y susurra: No deberias estar aqui...
    echo.
    echo Que haras
    echo 1. Enfrentarlo con tu espada
    echo 2. Huir y buscar mas pistas
    set /p choice2=Elige 1 o 2: 
    ```
    
    .ps1:
     ``` ps1
    function Biblioteca {
        Clear-Host
        $host.UI.RawUI.ForegroundColor = "DarkYellow"
        $host.UI.RawUI.BackgroundColor = "Black"
        Write-Host "En la biblioteca, encuentras un pergamino sobre el Cristal del Alba y la Torre del Eco. " 
        Write-Host "Una figura encapuchada te observa y susurra: No deberias estar aqui..."
        Write-Host ""
        Write-Host "Que haras"
        Write-Host "1. Enfrentarlo con tu espada"
        Write-Host "2. Huir y buscar mas pistas"
        $choice2 = Read-Host "Elige 1 o 2 " 
    }

    if ($choice1 -eq "1") { Biblioteca }
    ```
    Referencias: 
    - [LearnMicrosoft-PowerShell-Functions](https://learn.microsoft.com/es-es/powershell/utility-modules/psscriptanalyzer/rules/usedeclaredvarsmorethanassignments?view=ps-modules)

<br>

6. Bucles (while)
   
   Para llevar a cabo la validacion de datos de entrada he creado un bucle while. De esta forma, el usuario no podrá añadir un valor distinto a 1 o 2, y mientras no introduzca uno de estos numeros, se le seguirá preguntando.

    La estructura es la siguiente:
    ``` ps1
    while(condicion) {
        *contenido bucle*
    }
    ```

    Ejemplo:
    
     ``` ps1
    while ($choice1 -ne "1" -and $choice1 -ne "2") {
        $choice1 = Read-Host "Solo puedes escoger 1 o 2: "  
    }
    ```
    
    Referencias: 
    - [LearnMicrosoft-PowerShell-While](https://learn.microsoft.com/es-es/powershell/module/microsoft.powershell.core/about/about_while?view=powershell-7.5)

<br>

7. Cambio de color (fuente y fondo)
   
   Para cambiar el color de las letras y fondo, en lugar de usar 'color xX' lo cual no funciona, utilizaremos: 

       - $host.UI.RawUI.ForegroundColor = "nombreColor"    Color de fuente

       - $host.UI.RawUI.BackgroundColor = "nombreColor"    Color de fondo

    Ejemplo:
    
    .bat -> `color 04` 

    .ps1 -> `$host.UI.RawUI.ForegroundColor = "Red"`  |  `$host.UI.RawUI.BackgroundColor = "Black"`

    Referencias: 
    - [LearnMicrosoft-PowerShell-WriteHost](https://learn.microsoft.com/es-es/powershell/module/microsoft.powershell.utility/write-host?view=powershell-7.5)

