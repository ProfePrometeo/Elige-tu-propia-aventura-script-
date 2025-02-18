# Definir colores de consola
$Host.UI.RawUI.BackgroundColor = "Black"
$Host.UI.RawUI.ForegroundColor = "DarkBlue"
Clear-Host

Write-Host "==============================="
Write-Host "     EL DESTINO DE ELDORIA    "
Write-Host "==============================="
Write-Host ""
Write-Host "El reino de Eldoria ha vivido en paz durante siglos, protegido por el Cristal del Alba."
Write-Host "Sin embargo, una noche, el cristal desaparece, sumiendo al reino en el caos."
Write-Host "Solo una persona puede recuperarlo: tu."
Write-Host ""
Write-Host "Donde comienzas tu busqueda"
Write-Host "1. La Biblioteca de los Sabios"
Write-Host "2. El Bosque de las Sombras"
$eleccion1 = Read-Host "Elige 1 o 2"


function Final1 { Write-Host "FINAL: DESTINO SELLADO"; exit }
function Final2 { Write-Host "FINAL: EL FIN DEL REINO"; exit }
function Final3 { Write-Host "FINAL: EL HEROE DE ELDORIA"; exit }
function Final4 { Write-Host "FINAL: EL NUEVO SEÑOR OSCURO"; exit }

function FuerzaBruta {
    Clear-Host
    Write-Host "Intentas romper la trampa con tu espada, pero activa un hechizo de autodestruccion."
    Write-Host "Todo se vuelve blanco."
    Final2
}


function Mecanismo {
    Clear-Host
    Write-Host "Encuentras un patrón en el suelo y lo activas con cuidado."
    Write-Host "La trampa se desactiva y puedes tomar el Cristal."
    Write-Host ""
    Write-Host "¿Que haras ahora?"
    Write-Host "1. Regresar a Eldoria"
    Write-Host "2. Usar el poder del Cristal para ti mismo"
   
    $eleccion6 = Read-Host "Elige 1 o 2"

    do{ 
        if($eleccion6 -eq 1){ 
            Final3
        } if ($eleccion6 -eq 2){
            Final4
         }  
         if($eleccion6 -gt 2 ){
            Write-Host "Error, elige una opcion correcta"
         }
         if($eleccion6 -lt 1){
            Write-Host "Error, elige una opcion correcta"
         }
    }until ($eleccion6 -ne 2)
    
}

function Torre {
    Clear-Host
    Write-Host "La Torre del Eco es un lugar oscuro y en ruinas."
    Write-Host "Encuentras el Cristal del Alba, pero hay una trampa mágica."
    Write-Host ""
    Write-Host "¿Como intentas desactivarla?"
    Write-Host "1. Con fuerza bruta"
    Write-Host "2. Buscando un mecanismo oculto"
   
    $eleccion5 = Read-Host "Elige 1 o 2"
    do{ 
        if($eleccion5 -eq 1){ 
            FuerzaBruta
        } if ($eleccion5 -eq 2){
            Mecanismo
         }  
         if($eleccion5 -gt 2 ){
            Write-Host "error, elige una opcion correcta"
         }
         if($eleccion5 -lt 1){
            Write-Host "Error, elige una opcion correcta"
         }
    }until ($eleccion5 -ne 2)
}
function LuchaEncapuchado {
    Clear-Host
    Write-Host "Desenvainas tu espada y atacas, pero el encapuchado es rapido y te esquiva."
    Write-Host "Lanza un hechizo, inmovilizandote. Antes de perder el conocimiento, escuchas:"
    Write-Host "Has cometido un error..."
    Final1
}
function HuirBiblioteca {
    Clear-Host
    Write-Host "Escapas de la biblioteca y encuentras un mapa con la ubicación exacta de la Torre del Eco."
    Write-Host "Decides partir de inmediato."
    Torre
}
function HablarCriatura {
    Clear-Host
    Write-Host "La criatura se presenta como un guardián del Cristal."
    Write-Host "Te advierte que la Torre del Eco es una trampa mortal."
    Write-Host ""
    Write-Host "¿Le crees?"
    Write-Host "1. Si, decides buscar otra pista"
    Write-Host "2. No, continuas a la torre"
   
    $eleccion4 = Read-Host "Elige 1 o 2"
    do{ 
        if($eleccion4 -eq 1){ 
            BuscarPista 
        } if ($eleccion4 -eq 2){
            Torre
         } 
         if($eleccion4 -gt 2 ){
            Write-Host "error, elige una opcion correcta"
         }
         if($eleccion4 -lt 1){
            Write-Host "Error, elige una opcion correcta"
         } 
    }until ($eleccion4 -ne 2)
}
function Bosque {
    Clear-Host
    Write-Host "El bosque esta envuelto en niebla. Encuentras un circulo de piedras brillantes."
    Write-Host "Una criatura sombria emerge de entre los arboles."
    Write-Host ""
    Write-Host "¿Qué haras?"
    Write-Host "1. Hablar con la criatura"
    Write-Host "2. Esconderte y observar"
   
    $eleccion3 = Read-Host "Elige 1 o 2"
    do{ 
        if($eleccion3 -eq 1){ 
            HablarCriatura 
        } if ($eleccion3 -eq 2){
            Esconderse
         } 
         if($eleccion3 -gt 2 ){
            Write-Host "Error, elige una opcion correcta"
         }
         if($eleccion3 -lt 1){
            Write-Host "Error, elige una opcion correcta"
         } 
    }until ($eleccion3 -ne 2)
}

function Biblioteca {
    Clear-Host
    Write-Host "En la biblioteca, encuentras un pergamino sobre el Cristal del Alba y la Torre del Eco."
    Write-Host "Una figura encapuchada te observa y susurra: No deberias estar aqui..."
    Write-Host ""
    Write-Host "¿Qué haras?"
    Write-Host "1. Enfrentarlo con tu espada"
    Write-Host "2. Huir y buscar más pistas"
   
    $eleccion2 = Read-Host "Elige 1 o 2"
    
    do{
        if($eleccion2 -eq 1){
            LuchaEncapuchado
        } if($eleccion2 -eq 2){
            HuirBiblioteca
        }
        if($eleccion2 -gt 2 ){
            Write-Host "error, elige una opcion correcta"
         }
         if($eleccion2 -lt 1){
            Write-Host "Error, elige una opcion correcta"
         }
    }until( $eleccion2 -ne 2)
   
}

function Esconderse {
    Clear-Host
    Write-Host "Observas en silencio y ves a la criatura abrir un portal."
    Write-Host "Sin dudar, te cuelas en el y apareces dentro de la Torre del Eco."
    Torre
}

function BuscarPista {
    Clear-Host
    Write-Host "Ignoras la Torre y sigues el consejo de la criatura."
    Write-Host "Descubres que el verdadero Cristal estaba oculto en el Templo del Alba."
    Final3
}


do{
    if($eleccion1 -eq 1){
         Biblioteca 
    } if ($eleccion1 -eq 2 ){
         Bosque 
    } 
    if($eleccion1 -gt 2 ){
        Write-Host "error, elige una opcion correcta"
     }
     if($eleccion1 -lt 1){
        Write-Host "Error, elige una opcion correcta"
     }
}until ($eleccion1 -ne 2 )


