import wollok.game.*

class Planta{
	var property costoSoles = 0
	var property salud = 50
}

class Girasol inherits Planta{
	const property image = "trigo_1.png"
	
	method nuevaPlanta() = new Girasol()
}

class Tomate inherits Planta{
	const property image = "tomaco_ok.png"
	
	method nuevaPlanta() = new Tomate()
}

class Guisante inherits Planta{
	const property image = "maiz_adulto.png"
	
	method nuevaPlanta() = new Guisante()
}