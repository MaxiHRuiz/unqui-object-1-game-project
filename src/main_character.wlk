import wollok.game.*

object mainCharacter {

	var property direction
	var property position = game.at(4, 4)

	method image() = "./assets/entrenador.png"


	method irA(nuevaPosicion, newDirection) {
		self.direction(newDirection)
		position = nuevaPosicion
	}
	
	method decirDireccion(){
		game.say(self, direction.say()) 
	}
	
	method evadeCollide(){
		position = direction.newPosition(self.position())
	}
	

}

