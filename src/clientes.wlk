/*
 * Clientes: Bien. A tener en cuenta los detalles marcados sobre la utilización de variables
 * innecesarias.
 */

object ludmila {
	/* Es innecesario utilizar la constante pesoElKilometro ya que el enunciado
	 * pide que el valor es fijo e inamovible. La forma correcta era definiendo
	 * solamente el método de consulta. Te dejo la corrección y además, la forma
	 * resumida para implementar este tipo de métodos de consulta.
	 */
	method pesoElKilometro() = 18
	
}

object anaMaria {
	/* No es necesario utilizar variables que recuerden valores que se pueden
	 * resolver mediante una condición simple. Por eso, var pesoElKilometro no era
	 * necesaria. Otra cuestión a tener en cuenta es que si utilizas una variable
	 * que será booleana, es recomendable inicializarla, de esa forma se puede utilizar
	 * en el condicional aunque no sufra cambios. Te hago las correcciones a la implementación 
	 * y también los cambios para simplificar el código.
	 */
	var economicamenteEstable = true
	
	method pesoElKilometro() = if(economicamenteEstable) 30 else 25
	/* también podía ser: method pesoElKilometro() = if(self.estasEconomicamenteEstable()) 30 else 25 
	 * pero ya podemos usar directamente las variables dentro de los métodos del objeto */
	
	method setMalEconomicamente(){economicamenteEstable=false}
	method setBienEconomicamente(){economicamenteEstable=true}
	method estasEconomicamenteEstable(){return economicamenteEstable} // podría no usarse teniendo la variable
	
}

object teresa{
	/* Bien implementado. Te dejo sugerencia de simplificación de código nomás. */
	var pesoElKilometro=22
	
	method pesoElKilometro() = pesoElKilometro
	method setPesoElKilometro(precio){pesoElKilometro=precio}
}


object melina{
	/* No es necesario utilizar variable pesoElKilometro, ya que el objeto melina no debe
	 * recordar ningún valor, eso es responsabilidad de paraQuienTrabaja. También te dejo
	 * sugerencias para simplificar el código. Tampoco es necesario el método paraQuienTrabaja() 
	 * ya que no hay un pedido especial en el enunciado para que se informe eso que debe
	 * memorizar el objeto melina.
	 */
	var paraQuienTrabaja 

	method pesoElKilometro() = paraQuienTrabaja.pesoElKilometro() - 3
	method setParaQuienTrabaja(cliente){ paraQuienTrabaja=cliente }

}
