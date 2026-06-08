import personas.* 
import gimnasia.*


class Club{
    var property nombreClub = ""
    var property predios = []
    
    method mejorPredioPara(persona){
        return predios.max({ predio =>   predio.caloriasTotalesPara(persona)     })
    }
    
    method prediosTranquiPara(persona){
        return predios.filter({predio => predio.esPredioTranquiPara(persona)})
       }

    method rutinasMasExigentesPara(persona){
        return predios.map({predio => predio.rutinaMasExigentePara(persona)})
    }
}

class Predio {
    var property nombrePredio = ""
    var property rutinasDisponibles = []
   
    method esPredioTranquiPara(persona){
        return rutinasDisponibles.any({rutina => persona.caloriasQueQuemaria(rutina) < 500})
    }

   method caloriasTotalesPara(persona){
        return rutinasDisponibles.map({rutina => persona.caloriasQueQuemaria(rutina)}).sum()
   }
    method rutinaMasExigentePara(persona){
        return rutinasDisponibles.max({rutina => persona.caloriasQueQuemaria(rutina)})
    }

}