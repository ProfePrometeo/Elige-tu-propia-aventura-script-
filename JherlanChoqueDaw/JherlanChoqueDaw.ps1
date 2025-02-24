#Funcion de elegir entre 1 y 2 y que sea numerico
function opcion {
    param ($choice1)
    $validChoice = $false
    while (-not $validChoice) {
        $choice = Read-Host "Elige 1 o 2"
        if ($choice -as [int] -and ($choice -eq 1 -or $choice -eq 2)){ $validChoice = $true} 
        else { Write-Host "Por favor, elige un número válido: 1 o 2 y/o sea numerico" }
    }
    return $choice
}
#Biblioteca de los sabios
function biblioteca {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "Yellow"
    Write-Host "En la biblioteca, encuentras un pergamino sobre el Cristal del Alba y la Torre del Eco."
    Write-Host "Una figura encapuchada te observa y susurra: No deberias estar aqui..."
    Write-Host "."
    Write-Host "Que haras"
    Write-Host "1. Enfrentarlo con tu espada"
    Write-Host "2. Huir y buscar mas pistas"
    $choice2 = opcion
    switch ($choice2) {
        1{ LuchaEncapuchado }   #goto LuchaEncapuchado
        2{ HuirBiblioteca   }   #goto HuirBiblioteca
    }
    Read-Host "Presiona Enter para salir"
}
# Bosque
function Bosque {
    Clear-Host
    $host.ui.RawUI.ForegroundColor = "Green"
    Write-Host "El bosque está envuelto en niebla. Encuentras un círculo de piedras brillantes."
    Write-Host "Una criatura sombría emerge de entre los árboles."
    Write-Host ""
    Write-Host "¿Que haras?"
    Write-Host "1. Hablar con la criatura"
    Write-Host "2. Esconderte y observar"
    $choice3 = opcion
    switch ($choice3) {
        1{ HablarCriatura}   #goto HablarCriatura
        2{ Esconderse   }   #goto Esconderse
    }
    Read-Host "Presiona Enter para salir"
}
#LuchaEncapuchado
function LuchaEncapuchado {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "Red"       
    Write-Host "Desenvainas tu espada y atacas, pero el encapuchado es rapido y te esquiva." 
    Write-Host "Lanza un hechizo, inmovilizandote. Antes de perder el conocimiento, escuchas:"  
    Write-Host "Has cometido un error..."
    Read-Host "Presiona Enter para salir"
    final1
}
# HuirBiblioteca
function HuirBiblioteca {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "Grey"       
    Write-Host "Escapas de la biblioteca y encuentras un mapa con la ubicacion exacta de la Torre del Eco." 
    Write-Host "Decides partir de inmediato."
    Read-Host "Presiona Enter para salir"
    Torre
}
# Torre
function Torre {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "White"
    Write-Host "La Torre del Eco es un lugar oscuro y en ruinas. " 
    Write-Host "Encuentras el Cristal del Alba, pero hay una trampa magica."
    Write-Host "."
    Write-Host "Como intentas desactivarla"  
    Write-Host "1. Con fuerza bruta"
    Write-Host "2. Buscando un mecanismo oculto"
    $choice5 = opcion
    switch ($choice5) {
        1 { FuerzaBruta }
        2 { Mecanismo   }
    }
}
function FuerzaBruta {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "Red"       
    Write-Host "Intentas romper la trampa con tu espada, pero activa un hechizo de autodestruccion." 
    Write-Host "Todo se vuelve blanco."
    Read-Host "Presiona Enter para salir"
    final2
}
function Mecanismo {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "Yellow"       
    Write-Host "Encuentras un patron en el suelo y lo activas con cuidado." 
    Write-Host "La trampa se desactiva y puedes tomar el Cristal."
    Write-Host "."
    Write-Host "Que haras ahora"  
    Write-Host " 1. Regresar a Eldoria"
    Write-Host " 2. Usar el poder del Cristal para ti mismo"   
    $choice6 = opcion
    switch ($choice6) {
        1 { final3  }
        2 { final4 }
    }
}
function HablarCriatura {
    Clear-Host
    $host.ui.RawUI.ForegroundColor = "Cyan"
    Write-Host "La criatura se presenta como un guardián del Cristal."
    Write-Host "Te advierte que la Torre del Eco es una trampa mortal."
    Write-Host ""
    Write-Host "¿Le crees?"
    Write-Host "1. Sí, decides buscar otra pista"
    Write-Host "2. No, continúas a la torre"
    $choice4 = opcion
    switch ($choice4) {
        1 { BuscarPista  }
        2 { Torre }
    }
}
function Esconderse {
    Clear-Host
    $host.ui.RawUI.ForegroundColor = "Grey"
    Write-Host "Observas en silencio y ves a la criatura abrir un portal."
    Write-Host "Sin dudar, te cuelas en el y apareces dentro de la Torre del Eco."
    Read-Host "Presiona Enter para salir"
    Torre
}
function BuscarPista {
    Clear-Host
    $host.ui.RawUI.BackgroundColor = "Green"
    Write-Host "Ignoras la Torre y sigues el consejo de la criatura." 
    Write-Host "Descubres que el verdadero Cristal estaba oculto en el Templo del Alba."
    Read-Host "Presiona Enter para salir"
    final3
}
#Finales
function final1 {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "Grey" 
    Write-Host "======================================"
    Write-Host "          FINAL: DESTINO SELLADO"
    Write-Host "======================================"
    Write-Host  "Fuiste derrotado antes de conocer la verdad." 
    Write-Host  "El Cristal del Alba permanece perdido, y Eldoria se sume en la oscuridad."
    Read-Host "Presiona Enter para salir"
}
function final2 {
    Clear-Host
    $host.ui.RawUI.BackgroundColor = "Black"
    Write-Host "======================================"
    Write-Host "      FINAL: EL FIN DEL REINO         " 
    Write-Host "======================================" 
    Write-Host ""
    Write-Host "El hechizo destruyó la torre y contigo dentro." 
    Write-Host "Sin el Cristal del Alba, Eldoria colapsa en el caos."
    Read-Host "Presiona Enter para salir"
}
function final3 {
    Clear-Host
    $host.ui.RawUI.ForegroundColor = "Green"
    Write-Host "======================================"
    Write-Host "      FINAL: EL HEROE DE ELDORIA"
    Write-Host "======================================"
    Write-Host "Regresas con el Cristal del Alba y restauras el equilibrio."
    Write-Host "El reino celebra tu valentía y tu nombre será recordado para siempre."
    Read-Host "Presiona Enter para salir"
}
function final4 {
    Clear-Host
    $host.ui.RawUI.ForegroundColor = "Magenta"
    Write-Host "======================================"
    Write-Host "     FINAL: EL NUEVO SEÑOR OSCURO"
    Write-Host "======================================"
    Write-Host "Decides usar el Cristal para aumentar tu poder."
    Write-Host "Te conviertes en un ser temido, gobernando con puño de hierro."
    Read-Host "Presiona Enter para salir"
}
#Empieza desde aqui
$Host.UI.RawUI.ForegroundColor = "Yellow"
Write-Host "================================" -ForegroundColor Yellow
Write-Host "     EL DESTINO DE ELDORIA      " -ForegroundColor Yellow
Write-Host "================================" -ForegroundColor Yellow
Write-Host ""
Write-Host "El reino de Eldoria ha vivido en paz durante siglos, protegido por el Cristal del Alba."
Write-Host "Sin embargo, una noche, el cristal desaparece, sumiendo al reino en el caos."
Write-Host "Solo una persona puede recuperarlo: tu."
Write-Host " "
Write-Host "Donde comienzas tu busqueda"
Write-Host "1. La Biblioteca de los Sabios"
Write-Host "2. El Bosque de las Sombras"
$choice1 = opcion #Funcion de elegir entre 1 y 2 y que sea nuemrico
switch ($choice1) {
    1{ biblioteca   }   # got Biblioteca de los sabios
    2{ Bosque   }   #goto Bosque
}
Write-Host "Game Over"