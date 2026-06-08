import gimnasia.*

class Persona{
    var property peso = 0
    var property tiempoDeEjercicio = 0
    var property rutina 
    var property kilosPorCaloria = 0
    //arreglar los propperty
    method practicar() {
         rutina.tiempo(tiempoDeEjercicio)
         rutina.descansar()
         rutina.practicarRutina()
        }

    method pesoPerdido() { return 
    rutina.caloriasQuemadas() / kilosPorCaloria
    }
    
    //esta bien??
    method caloriasQueQuemaria(otraRutina){
        otraRutina.tiempo(tiempoDeEjercicio)
        otraRutina.descansar()
        otraRutina.practicarRutina()
        return otraRutina.caloriasQuemadas()
    }
}

class PersonaSedentaria inherits Persona(kilosPorCaloria = 7000) {//arreglar
    override method practicar() {
        if(peso>50){ 
        super()
        peso -= self.pesoPerdido()        
        }
        
    }

}
class PersonaAtleta inherits Persona(kilosPorCaloria = 8000, tiempoDeEjercicio=90) {//arreglar
    
    override method practicar(){
        super() 
        if(self.caloriasMasDeDiezMil()) {            
        peso -= self.pesoPerdido()        
        }
    }
    override method pesoPerdido(){return
        if(self.caloriasMasDeDiezMil()) { 
            super() - 1
        } else {0}
    }
    method caloriasMasDeDiezMil() {
        return rutina.caloriasQuemadas() > 10000
    }
}



/*
class Persona{
var peso
var tiempo
var relacionKGCal

method puedeRealizar(rutina){
abstracto    
}
method cartel(rutina){
abstracto
}

method realizarRutina(rutina){
    self.validarSiPuede(rutina)
    peso= peso - self.kilosPerdidos(rutina)
}
method validarSiPuede(rutina){
    if (not self.puedeRealizar(rutina)){
    self.error(self.cartel(rutina))
    }

}
method kilosPerdidos(rutina){
}

}


class PersonaSedentaria inherits Persona{
override method puedeRealizar(rutina){
        return peso > 50
}

}
class PersonaAtleta inherits Persona{
override method puedeRealizar(rutina){
        return rutina.caloriasQueConsuma(tiempo) > 10000
}

}
*/