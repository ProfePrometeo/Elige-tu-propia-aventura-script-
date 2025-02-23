# Transformación de BATCH a PowerShell

## Propósito
Adaptar el script original (.bat) a un formato compatible con PowerShell (.ps1).

## Modificaciones necesarias:

### Limpieza de pantalla
Reemplazar `cls` con `Clear-Host`.

### Visualización en consola
Sustituir `echo texto` por `Write-Host "texto"`.

Ejemplo:
```powershell
Write-Host "¿Dónde inicias tu búsqueda?"
```

### Captura de entrada del usuario
En lugar de `set /p variable=texto`, utilizar `$variable = Read-Host "texto"`.

Ejemplo:
```powershell
$opcion = Read-Host "Selecciona 1 o 2"
```

### Evaluación de variables
Cambiar `"%variable%"=="valorComparado"` por `$variable -eq "valorComparado"`. Para múltiples comparaciones, emplear `-and`.

Ejemplo:
```powershell
$opcion -ne "1" -and $opcion -ne "2"
```

### Estructuración de funciones
Definir las funciones antes de su uso:

```powershell
function NombreFuncion {
    # Contenido de la función
}

if ($condicion) {
    NombreFuncion
}
```

### Implementación de bucles (while)
Estructura para validación de entrada:

```powershell
while ($opcion -ne "1" -and $opcion -ne "2") {
    $opcion = Read-Host "Debes elegir 1 o 2"
}
```

### Configuración de colores
Para modificar colores de texto y fondo:

```powershell
$host.UI.RawUI.ForegroundColor = "Red"
$host.UI.RawUI.BackgroundColor = "Black"
```

Estas transformaciones permitirán que el script original funcione correctamente en un entorno PowerShell,
manteniendo su funcionalidad pero adaptándose a la sintaxis y características propias de este lenguaje de scripting.
