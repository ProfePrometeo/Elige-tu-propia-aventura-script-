$Host.UI.RawUI.BackgroundColor = "Black"
$Host.UI.RawUI.ForegroundColor = "Red"

# Funciones 
function EnfrentarEspada {
    param ($opcion2)
    Clear-Host
    Write-Host "==================================="
    Write-Output "Desenvainas tu espada y atacas, pero el encapuchado es rapido y te esquiva."  
    Write-Output "Lanza un hechizo, inmovilizandote. Antes de perder el conocimiento, escuchas:  "
    Write-Output "Has cometido un error..."
    Final1 
}

function Torre {
    Clear-Host
    Write-Host "==================================="
    Write-Host "La Torre del Eco es un lugar oscuro y en ruinas.  "
    Write-Host "Encuentras el Cristal del Alba, pero hay una trampa magica."
    Write-Host "Como intentas desactivarla"
    Write-Host "1. Con fuerza bruta"
    Write-Host "2. Buscando un mecanismo oculto"
    $opcionTorre= Read-Host "Elige 1 o 2:"
    
    switch ($opcionTorre) {
        1 {
            Clear-Host
            Write-Host "==================================="
            Write-Output "Has elegido la fuerza bruta"
            Write-Output "Intentas romper la trampa con tu espada, pero activa un hechizo de autodestruccion."
            Write-Output "Todo se vuelve blanco."
            Final2
        }
        2 {
            Clear-Host
            Write-Host "==================================="
            Write-Host "Has elegido buscar un mecanismo oculto"
            Write-Host "Encuentras un patron en el suelo y lo activas con cuidado.  "
            Write-Host "La trampa se desactiva y puedes tomar el Cristal."
            Write-Host "Que haras ahora"
            Write-Host "1. Regresar a Eldoria"
            Write-Host "2. Usar el poder del Cristal para ti mismo"
            $opcionMecanismo = Read-Host "Elige 1 o 2:"
            
            switch ($opcionMecanismo) {
                1 { Final3 }
                2 { Final4 }
                default { Write-Host "Escoge una opcion valida" }
            }
        }
        default { Write-Host "Escoge una opcion valida" }
    }
}

function HablarCriatura {
    param ($opcionBosque)
    Clear-Host
    Write-Host "==================================="
    Write-Host "La criatura se presenta como un guardian del Cristal.  "
    Write-Host "Te advierte que la Torre del Eco es una trampa mortal."
    Write-Host "Le crees"
    Write-Host "1. Si, decides buscar otra pista"
    Write-Host "2. No, continuas a la torre"
    $opcionCriatura = Read-Host "Elige 1 o 2:"
    
    switch ($opcionCriatura) {
        1 {
            Write-Host "==================================="
            Write-Host "Ignoras la Torre y sigues el consejo de la criatura.  "
            Write-Host "Descubres que el verdadero Cristal estaba oculto en el Templo del Alba."
            Final3 
        }
        2 { Torre }
        default { Write-Host "Escoge una opcion valida" }
    }
}

# Finales 
function Final1 { Write-Host "FINAL: DESTINO SELLADO"; Write-Host "Fuiste derrotado antes de conocer la verdad. " 
                Write-Host "El Cristal del Alba permanece perdido, y Eldoria se sume en la oscuridad."}
function Final2 { Write-Host "FINAL: EL FIN DEL REINO"; Write-Host "El hechizo destruyo la torre y contigo dentro."  
                Write-Host "Sin el Cristal del Alba, Eldoria colapsa en el caos."}
function Final3 { Write-Host "FINAL: EL HEROE DE ELDORIA"; Write-Host "Regresas con el Cristal del Alba y restauras el equilibrio."  
Write-Host "El reino celebra tu valentia y tu nombre sera recordado para siempre. 👏🏻👏🏻"}
function Final4 { Write-Host "FINAL: EL NUEVO CABALLERO OSCURO"; Write-Host "Decides usar el Cristal para aumentar tu poder."  
                Write-Host "Te conviertes en un ser temido, gobernando con todo el poder y dinero de este mundo.🤑💸" }

# Inicio del script
Write-Host "El Destino de Eldoria 😛"
Write-Host "================================"
Write-Host "     EL DESTINO DE ELDORIA"
Write-Host "================================"
Write-Host "El reino de Eldoria ha vivido en paz durante siglos, protegido por el Cristal del Alba.  "
Write-Host "Sin embargo, una noche, el cristal desaparece, sumiendo al reino en el caos.  "
Write-Host "Solo una persona puede recuperarlo: tu.  "
Write-Host "Donde comienzas tu busqueda"
Write-Host "1. La Biblioteca de los Sabios"
Write-Host "2. El Bosque de las Sombras"
$opcion = Read-Host "¿Que opcion deseas elegir?"

switch ($opcion) {
    1 {
        Clear-Host
        Write-Host "==================================="
        Write-Host "Has elegido la Biblioteca de los Sabios"
        Write-Host "==================================="
        Write-Host "Encuentras un pergamino sobre el Cristal del Alba y la Torre del Eco."  
        Write-Host "Una figura encapuchada te observa y susurra: No deberias estar aqui..."
        Write-Host "Decision importante, ¿qué haces?"
        Write-Host "1. Enfrentarlo con tu espada"
        Write-Host "2. Huir y buscar mas pistas"
        $opcion2 = Read-Host "¿Que opcion deseas elegir?"
        
        switch ($opcion2) {
            1 { EnfrentarEspada }
            2 {
                Clear-Host
                Write-Host "==================================="
                Write-Output "Escapas de la biblioteca y encuentras un mapa con la ubicacion exacta de la Torre del Eco.  "
                Write-Output "Decides partir de inmediato."
                Torre
            }
            default { Write-Host "Escoge una opcion valida" }
        }
    }
    2 {
        Clear-Host
        Write-Host "==================================="
        Write-Host "Has elegido el Bosque de las Sombras"
        Write-Host "==================================="
        Write-Host "El bosque esta envuelto en niebla. Encuentras un circulo de piedras brillantes."
        Write-Host "Una criatura sombria emerge de entre los arboles."
        Write-Host "Que haras"
        Write-Host "1. Hablar con la criatura"
        Write-Host "2. Esconderte y observar"
        $opcionBosque = Read-Host "Elige 1 o 2:"
        
        switch ($opcionBosque) {
            1 { HablarCriatura }
            2 {
                Clear-Host
                Write-Host "==================================="
                Write-Host "Observas en silencio y ves a la criatura abrir un portal."
                Write-Host "Sin dudar, te cuelas en el y apareces dentro de la Torre del Eco."
                Torre
            }
            default { Write-Host "Escoge una opcion valida" }
        }
    }
    default { Write-Host "Escoge una opcion valida" }
}
