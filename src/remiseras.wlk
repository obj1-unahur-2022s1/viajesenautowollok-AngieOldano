/*
 * Remiseras: Bien implementados, te dejo algunas sugerencias en el código.
 */

import clientes.*

object roxana{
	/* Bien, solo te dejo el modo resumido de los getter */
	method precioViaje(cliente,kms) = cliente.pesoElKilometro() * kms
}


object gabriela{
	/* Bien. No hacen falta algunos paréntesis que te los elimino y pongo el modo resumido */
	method precioViaje(cliente,kms) = cliente.pesoElKilometro() * kms * 1.2 
}


object mariela{
	/* Bien! */
	method precioViaje(cliente,kms) = 50.max(cliente.pesoElKilometro() * kms) 	
}


object juana{
	/* Bien. Te dejo una forma bien resumida para el siguiente método cuando hay condicionales
	 * y sin usar return
	 */
	method precioViaje(cliente,kms) = if(kms>8) 200 else 100
}

object lucia{
	/* Bien. El método aQuienRemplaza() realmente no es necesario. Te dejo las formas resumidas */
	var aQuienRemplaza

	method setAQuienRemplaza(cliente){aQuienRemplaza=cliente}
	method precioViaje(cliente,kms) = aQuienRemplaza.precioViaje(cliente,kms)
}
