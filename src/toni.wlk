import wollok.game.*
import cabezal.*

object toni {
	const property image = "toni.png"
	var property position = game.at(3, 3)
	var property planta = new Tomate()
	var property soles = 0
	const property plantas = [] 
	
	method configurarTareas(){
		keyboard.w().onPressDo{self.cambiarPlanta(new Guisante())}
		keyboard.s().onPressDo{self.cambiarPlanta(new Tomate())}
		keyboard.a().onPressDo{self.plantar()}
		keyboard.d().onPressDo{self.desplantar()}
	}
	
	
	method cambiarPlanta(nuevaPlanta){
		planta = nuevaPlanta
	}
	
	method plantar(){
		if(self.sePuedePlantarEn(self.position())){
			game.addVisualIn(self.planta(), self.position());
			self.planta(self.planta().nuevaPlanta())
		}
	}
	
	method desplantar(){
		game.getObjectsIn(position)
	}
	
	
	method sePuedePlantarEn(posicion) = self.laCeldaEstaVacia() and self.laAlturaEsValida(posicion)
	method laCeldaEstaVacia() = game.colliders(self).size()<1
	method laAlturaEsValida(posicion) = posicion.y()!=7 and posicion.y()!=0 
	

	
	// Pegar acá todo lo que tenían de Toni en la etapa 1
}