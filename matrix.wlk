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
    
    method vitalidadEquilibrada(){}

    method elegidoEsta(){}

    method chocarNave(){
        return pasajeros.clean()
    }
    method acelerarNave(){}

}