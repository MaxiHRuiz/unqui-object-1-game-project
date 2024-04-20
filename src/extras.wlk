import wollok.game.*
import main_character.*


class Muro {
  var border
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
		keyboard.right().onPressDo{ mainCharacter.irA(mainCharacter.position().right(1), leftDirection )}
		keyboard.up().onPressDo{ mainCharacter.irA(mainCharacter.position().up(1), leftDirection )}
		keyboard.down().onPressDo{ mainCharacter.irA(mainCharacter.position().down(1), leftDirection )}
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