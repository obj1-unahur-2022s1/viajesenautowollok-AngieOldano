object ludmila {
	const pesoElKilometro=18
	method pesoElKilometro(){return pesoElKilometro}
	
}

object anaMaria {
	var pesoElKilometro=30
	var economicamenteEstable=true
	
	method pesoElKilometro(){return pesoElKilometro}
	method setEstasBienEconomicamente(){economicamenteEstable=false}
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
	const pesoElKilometro=22///////////////////////////////////////////////////
	
	method pesoElKilometro(){return pesoElKilometro}
	
}


object melina{
	var paraQuienTrabaja = null
	var pesoElKilometro	= paraQuienTrabaja.pesoElKilometro() - 3

	
	//method setPesoElKilometro(cliente){persona.pesoElKilometro() - 3}
	method pesoElKilometro(){return pesoElKilometro}
	method setParaQuienTrabaja(cliente){paraQuienTrabaja=cliente}
	method paraQuienTrabaja(){return paraQuienTrabaja}

}
