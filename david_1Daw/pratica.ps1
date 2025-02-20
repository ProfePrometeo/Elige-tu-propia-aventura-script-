$Host.UI.RawUI.BackgroundColor = "Black"
$Host.UI.RawUI.ForegroundColor = "Yellow"
Clear-Host
Write-Host "================================"
Write-Host "     EL DESTINO DE ELDORIA"
Write-Host "================================"
Write-Host ""
Write-Host "El reino de Eldoria ha vivido en paz durante siglos, protegido por el Cristal del Alba."
Write-Host "Sin embargo, una noche, el cristal desaparece, sumiendo al reino en el caos."
Write-Host "Solo una persona puede recuperarlo: tu."
Write-Host ""
Write-Host "¿Donde comienzas tu busqueda?"
Write-Host "1. La Biblioteca de los Sabios"
Write-Host "2. El Bosque de las Sombras"
$choice1 = Read-Host "Elige 1 o 2"

if ($choice1 -eq "1") { Biblioteca }
elseif ($choice1 -eq "2") { Bosque }

function Biblioteca {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "Yellow"
    Write-Host "En la biblioteca, encuentras un pergamino sobre el Cristal del Alba y la Torre del Eco."
    Write-Host "Una figura encapuchada te observa y susurra: No deberias estar aqui..."
    Write-Host ""
    Write-Host "¿Que haras?"
    Write-Host "1. Enfrentarlo con tu espada"
    Write-Host "2. Huir y buscar mas pistas"
    $choice2 = Read-Host "Elige 1 o 2"

    if ($choice2 -eq "1") { LuchaEncapuchado }
    elseif ($choice2 -eq "2") { HuirBiblioteca }
}

function LuchaEncapuchado {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "Red"
    Write-Host "Desenvainas tu espada y atacas, pero el encapuchado es rapido y te esquiva."
    Write-Host "Lanza un hechizo, inmovilizandote. Antes de perder el conocimiento, escuchas:"
    Write-Host "Has cometido un error..."
    Final1
}

function HuirBiblioteca {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "Green"
    Write-Host "Escapas de la biblioteca y encuentras un mapa con la ubicacion exacta de la Torre del Eco."
    Write-Host "Decides partir de inmediato."
    Torre
}

function Bosque {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "DarkGreen"
    Write-Host "El bosque esta envuelto en niebla. Encuentras un circulo de piedras brillantes."
    Write-Host "Una criatura sombría emerge de entre los árboles."
    Write-Host ""
    Write-Host "¿Que haras?"
    Write-Host "1. Hablar con la criatura"
    Write-Host "2. Esconderte y observar"
    $choice3 = Read-Host "Elige 1 o 2"

    if ($choice3 -eq "1") { HablarCriatura }
    elseif ($choice3 -eq "2") { Esconderse }
}

function HablarCriatura {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "Cyan"
    Write-Host "La criatura se presenta como un guardian del Cristal."
    Write-Host "Te advierte que la Torre del Eco es una trampa mortal."
    Write-Host ""
    Write-Host "¿Le crees?"
    Write-Host "1. Sí, decides buscar otra pista"
    Write-Host "2. No, continuas a la torre"
    $choice4 = Read-Host "Elige 1 o 2"

    if ($choice4 -eq "1") { BuscarPista }
    elseif ($choice4 -eq "2") { Torre }
}

function Esconderse {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "Gray"
    Write-Host "Observas en silencio y ves a la criatura abrir un portal."
    Write-Host "Sin dudar, te cuelas en el y apareces dentro de la Torre del Eco."
    Torre
}

function Torre {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "White"
    Write-Host "La Torre del Eco es un lugar oscuro y en ruinas."
    Write-Host "Encuentras el Cristal del Alba, pero hay una trampa magica."
    Write-Host ""
    Write-Host "¿Como intentas desactivarla?"
    Write-Host "1. Con fuerza bruta"
    Write-Host "2. Buscando un mecanismo oculto"
    $choice5 = Read-Host "Elige 1 o 2"

    if ($choice5 -eq "1") { FuerzaBruta }
    elseif ($choice5 -eq "2") { Mecanismo }
}

function FuerzaBruta {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "Red"
    Write-Host "Intentas romper la trampa con tu espada, pero activa un hechizo de autodestruccion."
    Write-Host "Todo se vuelve blanco."
    Final2
}

function Mecanismo {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "White"
    Write-Host "Encuentras un patrón en el suelo y lo activas con cuidado."
    Write-Host "La trampa se desactiva y puedes tomar el Cristal."
    Write-Host ""
    Write-Host "¿Qué harás ahora?"
    Write-Host "1. Regresar a Eldoria"
    Write-Host "2. Usar el poder del Cristal para ti mismo"
    $choice6 = Read-Host "Elige 1 o 2"

    if ($choice6 -eq "1") { Final3 }
    elseif ($choice6 -eq "2") { Final4 }
}

function BuscarPista {
    Clear-Host
    $Host.UI.RawUI.ForegroundColor = "DarkGreen"
    Write-Host "Ignoras la Torre y sigues el consejo de la criatura."
    Write-Host "Descubres que el verdadero Cristal estaba oculto en el Templo del Alba."
    Final3
}

function Final1 {
    Clear-Host
    Write-Host "======================================"
    Write-Host "       FINAL: DESTINO SELLADO"
    Write-Host "======================================"
    Write-Host "Fuiste derrotado antes de conocer la verdad."
    pause
}

function Final2 {
    Clear-Host
    Write-Host "======================================"
    Write-Host "      FINAL: EL FIN DEL REINO"
    Write-Host "======================================"
    Write-Host "El hechizo destruyó la torre y contigo dentro."
    pause
}

function Final3 {
    Clear-Host
    Write-Host "======================================"
    Write-Host "    FINAL: EL HÉROE DE ELDORIA"
    Write-Host "======================================"
    pause
}

function Final4 {
    Clear-Host
    Write-Host "======================================"
    Write-Host "  FINAL: EL NUEVO SENOR OSCURO"
    Write-Host "======================================"
    pause
}
cfv