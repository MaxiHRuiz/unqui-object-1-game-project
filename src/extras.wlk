import wollok.game.*
import main_character.*


class Muro {
  var property position = game.at(0,0)

  method image() = "./assets/muro.png"
  
  method setPosition(x, y){
  		position = game.at(x, y)
  }
  
  method whenCollide(mainCharacter){
  		mainCharacter.evadeCollide()
  }
}

object teclado {
	method configurar() {
		//keyboard.any().onPressDo{ juegoPepita.chequearEstadoJuego()}
		keyboard.left().onPressDo{ mainCharacter.irA(mainCharacter.position().left(1), leftDirection )}
		keyboard.right().onPressDo{ mainCharacter.irA(mainCharacter.position().right(1), rightDirection )}
		keyboard.up().onPressDo{ mainCharacter.irA(mainCharacter.position().up(1), toptDirection )}
		keyboard.down().onPressDo{ mainCharacter.irA(mainCharacter.position().down(1), downDirection )}
		keyboard.c().onPressDo{ mainCharacter.decirDireccion()}
	}

}


object leftDirection {
	method newPosition(currentPosition){
		return new Position(x = currentPosition.x() +1, y = currentPosition.y() )
	}
	
	method say(){
		return 'left'
	}
}


object downDirection {
	method newPosition(currentPosition){
		return new Position(x = currentPosition.x(), y = currentPosition.y()+1 )
	}
	
	method say(){
		return 'down'
	}
}

object rightDirection {
	method newPosition(currentPosition){
		return new Position(x = currentPosition.x()-1, y = currentPosition.y())
	}
	
	method say(){
		return 'right'
	}
}

object toptDirection {
	method newPosition(currentPosition){
		return new Position(x = currentPosition.x(), y = currentPosition.y()-1)
	}
	
	method say(){
		return 'top'
	}
}