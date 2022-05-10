/*
 * Oficina: Bien(-). El método intercambiarRemiseras() no estaba bien implementado, 
 * ya que provocaba que se pierda el valor de la primeraRemisera.
 */
import remiseras.*
import clientes.*

object oficina{
	var primeraOpcion
	var segundaOpcion
	
	method asignarRemiseras(remisera1, remisera2){primeraOpcion=remisera1; segundaOpcion=remisera2}
	method cambiarPrimerRemiserarPor(remisera){primeraOpcion=remisera}
	method cambiarSegundoRemiseraPor(remisera){segundaOpcion=remisera}
	method intercambiarRemiseras(){
		/* No es correcta esa implementación, ya que luego de ejecutar la  primer
		 * asignación, perdías el valor de la primeraOpcion. 
		 * Te dejo la forma correcta en que se debía implementar este método.  
		 */
		self.asignarRemiseras(segundaOpcion, primeraOpcion)
	}
	method remiseraElegidaParaViaje(cliente, kms) =
		/* Bien. Tal vez podrías haber hecho un método auxiliar para que sea más claro el código.
		 * Te dejo la sugerencia y además la forma simplificada sin return.
		 */
		if (self.diferenciaPrecio(cliente,kms)>30) segundaOpcion else primeraOpcion

	method diferenciaPrecio(cliente,kms) = 
		primeraOpcion.precioViaje(cliente,kms)
		- segundaOpcion.precioViaje(cliente,kms)
	
}
