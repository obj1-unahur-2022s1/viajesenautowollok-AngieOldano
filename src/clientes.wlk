object ludmila {
	const pesoElKilometro=18
	method pesoElKilometro(){return pesoElKilometro}
	
}

object anaMaria {
	var pesoElKilometro
	var economicamenteEstable
	
	method pesoElKilometro(){return pesoElKilometro}
	method setMalEconomicamente(){economicamenteEstable=false}
	method setBienEconomicamente(){economicamenteEstable=true}
	method estasEconomicamenteEstable(){return economicamenteEstable}
	method setPesoElKilometro(){
		if (economicamenteEstable){
			pesoElKilometro=30
		}else{
			pesoElKilometro=25	
		}
	}	
	
}

object teresa{
	var pesoElKilometro=22
	
	method pesoElKilometro(){return pesoElKilometro}
	method setPesoElKilometro(precio){pesoElKilometro=precio}
}


object melina{
	var paraQuienTrabaja 
	var pesoElKilometro	

	method pesoElKilometro(){return pesoElKilometro}
	method setParaQuienTrabaja(cliente){
		paraQuienTrabaja=cliente
		pesoElKilometro= paraQuienTrabaja.pesoElKilometro() - 3
	}
	method paraQuienTrabaja(){return paraQuienTrabaja}

}
