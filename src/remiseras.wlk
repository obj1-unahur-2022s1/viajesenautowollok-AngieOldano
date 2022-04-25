import clientes.*

object roxana{
	method precioViaje(cliente,kms){return cliente.pesoElKilometro() * kms}
}


object gabriela{
	method precioViaje(cliente,kms){return (cliente.pesoElKilometro() * kms)*1.2}
}


object mariela{
	method precioViaje(cliente,kms){return 50.max(cliente.pesoElKilometro() * kms) }	
}


object juana{
	method precioViaje(cliente,kms){
		if(kms>8){
			return 200
		}else{
			return 100
		}
	}
}

object lucia{
	var aQuienRemplaza
	method setAQuienRemplaza(cliente){aQuienRemplaza=cliente}
	method aQuienRemplaza(){return aQuienRemplaza}
	
	method precioViaje(cliente,kms){return aQuienRemplaza.precioViaje(cliente,kms)}
}
