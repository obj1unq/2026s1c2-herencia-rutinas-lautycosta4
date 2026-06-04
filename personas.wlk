import gimnasia.*

class Persona{
    var property peso = 0
    var property tiempoDeEjercicio = 0
    var property rutina 
    var property kilosPorCaloria = 0
    
    method practicar() {
         rutina.tiempo(tiempoDeEjercicio)
         rutina.descansar()
         rutina.practicarRutina()

           }
    method pesoPerdido() { return 
    rutina.caloriasQuemadas() / kilosPorCaloria
    }       
}

class PersonaSedentaria inherits Persona(kilosPorCaloria = 7000) {
    override method practicar() {
        if(peso>50){ 
        super()
        peso -= self.pesoPerdido()        
        }
        
    }

}
class PersonaAtleta inherits Persona(kilosPorCaloria = 8000, tiempoDeEjercicio=90) {
    
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