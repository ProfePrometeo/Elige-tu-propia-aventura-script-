# Errores y mejoras realizadas sobre el archivo script powershell.

## *Cambios realizados al pasar de CMD a powershell*
- sustitucion de **echo** por **write-host** para imprimir el texto
- sustitucion de **set /p** por **Read-Host** para capturar la entrada de usuario
- Colores de la consola: usamos **$Host.UI.RawUI.ForegroundColor** y **$Host.UI.RawUI.BackgroundColor** para cambiar el color de texto y fondo.
- Borramos la sentencia **goto** al pasarlo a powershell.
- Las acciones como **:Esconderse** en el lenguaje de PowerShell debn de ser escritas como una funcion **Esconderse{}** y el contenido debe de ir dentro de las llaves.

## *Corrección de errores al ejecutar el script en powershell*
- Al ejecutar el código nos da error por las restricciones de PowerShell sobre los scripts, para eso necesitamos habilitar la ejecución de scripts para poder ejecutarlo. Para ello debemos escribir esta sentencia en nuestro scrip: **Set-ExecutionPolicy RemoteSigned -Scope CurrentUser**
- La sintaxis de PowerShell funciona diferente por lo que debemos: Las funciones, **"function{}"**  deben de estar al principio de manera que las invoquemos al final.

## *Mejoras realizadas:*
- Con fines decorativos cambiamos la fuente del titulo: "EL DESTINO DE ELDORIA" utilizando fuentes de ASCII art que podemos buscar, copiar y pegar desde cualquier pagina web.
