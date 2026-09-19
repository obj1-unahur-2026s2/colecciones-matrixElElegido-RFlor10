object neo{
    var energia = 100

    method vitalidad() = energia/10    method esElegido() = true
    method saltar() {
        energia = energia/2
    }
}

object morfeo{
    var vitalidad = 8
    var estaDescansado = true

    method estaDescansado() = estaDescansado

    method vitalidad() = vitalidad
    method esElegido() = false
    method saltar() {
        estaDescansado = !estaDescansado
        vitalidad =(vitalidad - 1).max(0)
    }
}





object trinity{
    method vitalidad() = 0
    method esElegido() = false
    method saltar() {}
}

object nave{
    const  pasajeros = []
    method pasajeros() = pasajeros

    method subirPasageros(unPasajero){
        pasajeros.add(unPasajero)
    }

    method bajarPasajeros(unPasajero){
        pasajeros.remove(unPasajero)
    }

    method cantidadPasajeros() {
        return pasajeros.size()
    }

    method elPasajeroConMasVitalidad(){
        return pasajeros.max({unPasajero => unPasajero.vitalidad()} )
    }

    method laMayorVitalidad(){
        return pasajeros.max({unPasajero => unPasajero.vitalidad()} ).vitalidad()
    }
    method elPasajeroConMenosVitalidad(){
        return pasajeros.min({unPasajero => unPasajero.vitalidad()} )
    }

    method laMenorVitalidad(){
        return pasajeros.min({unPasajero => unPasajero.vitalidad()} ).vitalidad()
    }
    
    method vitalidadEstaEquilibrada(){
        //max <= min*2
        return self.laMayorVitalidad().vitalidad() <= self.laMenorVitalidad().vitalidad() *2
    }

    method elElegidoEsta(){
        //lista que contenga a el elegido
        return pasajeros.any({unPasajero => unPasajero.esElegido()})
    }

    method chocarNave(){
        pasajeros.forEach({p=>p.saltar()}) //para cada p salta y pasa al siguiente p y asi
        pasajeros.clean()
    }
    method acelerarNave(){
        pasajeros.filter({p=> not p.esElegido()}).forEach({p=>p.saltar()}) 
            //[neo, trinity, morfeo] mi primer lista    
            //[trinity, morfe] lista ya filtada con los quq no son elegidos
        //filtro, me quedo con la lista de los que no son elegidos y luego ejecuta para cada p salta y pasa al siguiente p y asi

    }

}