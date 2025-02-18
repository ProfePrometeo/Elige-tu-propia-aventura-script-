# Cambios notables

1. He transcrito el código para PowerShell (a archivo .ps1): Creación de funciones y demás conversiones.
2. Cambios en colores de encabezados y textos en función a la estética deseada.
3. Inclusión de títulos generados en ASCII Art.
4. Validación de errores al introducir parámetros (opción introducida por usuario).

## Transcripción de código
  - Sustitución de comando **echo** por **write-host** 
  - Sustitución de comando **set/p** por **$choice** 
  - Sustitución de comando **:nombreFuncion** por **function NombreFuncion {}** 

## Validación de errores al introducir parámetros
- Para la validación al introducir parámetros, he creado la siguiente función:
```
function Error {
    Write-Host ""
    Write-Host "Introduce una opcion valida o vendra la guardia a por ti!"
    Write-Host ""
    pause
}
```

  - Y añadido seguidamente este *else*:
```
    else { 
        Error 
        nombreFuncion
    }
```


