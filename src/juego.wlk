import wollok.game.*
import toni.*
import pachamama.*
import cabezal.*

object juego{
	method configurarPantalla(){
		game.width(20)
		game.height(8)
		game.cellSize(96)
	}
	
	method aniadirVisuales(){
		game.addVisualCharacter(toni)
		game.addVisualIn(pachamama, game.at(0, 13));
	}
	
	
}

