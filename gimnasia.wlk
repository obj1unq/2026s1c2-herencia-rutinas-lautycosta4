class Rutina{
    var property intensidad = 0 
    var property tiempo = 0 
    var property descanso = 0
    var property caloriasQuemadas = 0 //arreglar
    method practicarRutina() {
      caloriasQuemadas =  100 * (tiempo - descanso) * intensidad
    }

}

class Running inherits Rutina {

    method descansar() { 
      if(tiempo > 20) {
        descanso = 5
      } else {
        descanso = 2
      }
    }
      
}

class Maraton inherits Running {
  override method practicarRutina() { 
    super()
    self.duplicarCalorias()
  }
  method duplicarCalorias() {
    caloriasQuemadas = caloriasQuemadas * 2
  }
}


class Remo inherits Rutina(intensidad = 1.3) {//arreglar
    method descansar() { 
    descanso = tiempo/5
    }
  
}

class RemoDeCompeticion inherits Remo(intensidad = 1.7) {//arreglar
  override method descansar() { 
    super()
    self.restarDescanso()
  }
  method restarDescanso() {
    descanso = (descanso - 3).max(2) 
  }

  
}





/*
class Rutina{
  method descanso(tiempoEjercicio){
  }
  method caloriasConsume(tiempoEjercicio){

  }
  method intensidad(){
  }

}

class Running inherits Rutina{
  var intensidad=0
  override method intensidad(){
    return intensidad
  }
class Maraton inherits Running{

}

}
class Remo inhertis Rutina{
override method intensidad(){
  return 1.3
  }
class RemoCompetencia inhertis Remo{
override method intensidad(){
  return 1.7
  }

}



*/