import wollok.game.*
import main_character.*

object gameConfiguration {
	method init() {
		game.title("game")
			// game.boardGround("fondo.jpg")
		game.height(10)
		game.width(10)
			// game.cellSize(20)
		teclado.configurate()
		game.addVisual(mainCharacter)
	}

}

object teclado {

	method configurate() {
		// keyboard.any().onPressDo{ juegoPepita.chequearEstadoJuego()}
		keyboard.left().onPressDo{ mainCharacter.irA(mainCharacter.position().left(1), leftDirection)}
		keyboard.right().onPressDo{ mainCharacter.irA(mainCharacter.position().right(1), rightDirection)}
		keyboard.up().onPressDo{ mainCharacter.irA(mainCharacter.position().up(1), toptDirection)}
		keyboard.down().onPressDo{ mainCharacter.irA(mainCharacter.position().down(1), downDirection)}
		keyboard.c().onPressDo{ mainCharacter.sayDirection()}
	}

}

